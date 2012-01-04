package com.airtransfer.services.impl;

import com.airtransfer.models.Airport;
import com.airtransfer.services.FullTextSearchService;
import org.apache.lucene.search.Query;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.search.FullTextSession;
import org.hibernate.search.MassIndexer;
import org.hibernate.search.Search;
import org.hibernate.search.impl.SimpleIndexingProgressMonitor;
import org.hibernate.search.query.dsl.QueryBuilder;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.File;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/**
 * User: Sergey
 * Date: 03.01.12 11:35
 */
@Service
@Transactional(readOnly = true)
public class FullTextSearchServiceImpl extends HibernateDaoSupport implements FullTextSearchService, ApplicationContextAware {

    private static final String[] symbols = new String[]{"+", "&", "|", "!", "(", ")", "{", "}", "[", "]", "^", "\"", "~", "*", "?", ":", "\\", "/"};

    @Value("${indexBaseDirectory}")
    protected String indexBaseDirectory = ".";

    @Transactional(readOnly = true)

    public void createIndex() {
        File file = new File(indexBaseDirectory);
        if (file.exists()) {
            getHibernateTemplate().execute(new HibernateCallback<Object>() {
                public Object doInHibernate(Session session) throws HibernateException, SQLException {
                    FullTextSession fullTextSession = Search.getFullTextSession(session);
                    try {
                        logger.warn("Start indexing ..");
                        MassIndexer indexer = fullTextSession.createIndexer(Airport.class);
                        indexer.batchSizeToLoadObjects(100)
                                .threadsToLoadObjects(5)
                                .threadsForIndexWriter(3)
                                .threadsForSubsequentFetching(2)
                                .optimizeOnFinish(true)
                                .progressMonitor(new SimpleIndexingProgressMonitor())
                                .startAndWait();
                        fullTextSession.flushToIndexes();
                        logger.warn("Index created");
                    } catch (Throwable e) {
                        logger.error(e.getMessage(), e);
                    }
                    return Boolean.TRUE;
                }
            });
        }
    }

    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        final FullTextSearchService bean = applicationContext.getBean(FullTextSearchService.class);
        bean.createIndex();
    }


    @Autowired
    public void setFactory(SessionFactory factory) {
        this.setSessionFactory(factory);
    }

    @SuppressWarnings("unchecked")
    public List<Airport> findAirports(Locale locale, final String term, final Integer limit) {
        final String key = eraseSpecialCharacters(term);
//        final String key = term;

        return (List<Airport>) getHibernateTemplate().executeFind(new HibernateCallback<Object>() {
            public Object doInHibernate(Session session) throws HibernateException, SQLException {
                FullTextSession textSession = Search.getFullTextSession(session);
/*
                Analyzer analyzer = textSession.getSearchFactory().getAnalyzer(Airport.class);
                QueryParser parser = new MultiFieldQueryParser(Version.LUCENE_31, new String[]{"rusName"}, analyzer);
                try {
                    Query parse = parser.parse("rusName:Сан\\-Фр*");
                    System.out.println(parse);
                    return textSession.createFullTextQuery(parse, Airport.class).list();

                } catch (ParseException e) {
                    e.printStackTrace();
                }
                return Collections.emptyList();
*/
                QueryBuilder builder = textSession.getSearchFactory().buildQueryBuilder().forEntity(Airport.class).get();

                Query query = builder.bool()
/*
                        .should(builder.phrase()
                                .onField("rusName")
                                .andField("engName")
                                .andField("countryCode")
                                .andField("iataCode")
                                .sentence(key).createQuery())
                        .should(builder.phrase()
                                .onField("rusName")
                                .andField("engName")
                                .andField("countryCode")
                                .andField("iataCode")
                                .sentence(key.toLowerCase()).createQuery())
*/
                        .should(builder.keyword().wildcard()
                                .onField("rusName")
                                .andField("engName")
                                .andField("countryCode")
                                .andField("iataCode")
                                .matching(key + "*").createQuery())
                        .should(builder.keyword().wildcard()
                                .onField("rusName")
                                .andField("engName")
                                .andField("countryCode")
                                .andField("iataCode")
                                .matching(key.toLowerCase() + "*").createQuery())
                        .createQuery();
                logger.debug("Lucene query: " + query);
                System.out.println("Lucene query: " + query);
                List result = textSession.createFullTextQuery(query, Airport.class)
                        .setMaxResults(limit)
                        .list();
                return result == null ? Collections.EMPTY_LIST : result;
            }
        });
    }

    public static String eraseSpecialCharacters(String s) {
        for (String i : symbols) {
            s = s.replace(i, "");
        }
        return s.replace("-", "\\-");
    }


/*
    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("conf/applicationContext.xml");
        FullTextSearchService bean = context.getBean(FullTextSearchService.class);
        List<Airport> list = bean.findAirports(Locale.US, "Сан", 10);
        for (Airport airport : list) {
            System.out.println(airport.getIataCode() + " " + airport.getEngName() + " " + airport.getRusName() + " " + airport.getCountryCode());
        }
    }

*/
}
