package com.airtransfer.services.impl;

import com.airtransfer.models.Airport;
import com.airtransfer.models.City;
import com.airtransfer.models.UserProfile;
import com.airtransfer.services.FullTextSearchService;
import com.airtransfer.services.dao.UserProfileDao;
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

    private static final Class[] clazz;

    static {
        clazz = new Class[]{
                Airport.class,
                City.class,
                UserProfile.class
        };
    }

    @Value("${indexBaseDirectory}")
    protected String indexBaseDirectory = ".";

    @Transactional(readOnly = true)
    public void createIndex() {
        File file = new File(indexBaseDirectory);
        if (false && file.exists()) {
            getHibernateTemplate().execute(new HibernateCallback<Object>() {
                public Object doInHibernate(Session session) throws HibernateException, SQLException {
                    FullTextSession fullTextSession = Search.getFullTextSession(session);
                    try {
                        logger.warn("Start indexing ..");
                        MassIndexer indexer = fullTextSession.createIndexer(clazz);
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
        final String key = removeSpecialCharacters(term);

        return (List<Airport>) getHibernateTemplate().executeFind(new HibernateCallback<Object>() {
            public Object doInHibernate(Session session) throws HibernateException, SQLException {
                FullTextSession textSession = Search.getFullTextSession(session);
                QueryBuilder builder = textSession.getSearchFactory().buildQueryBuilder().forEntity(Airport.class).get();

                Query query = builder.bool()
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
                List result = textSession.createFullTextQuery(query, Airport.class)
                        .setMaxResults(limit)
                        .list();
                return result == null ? Collections.EMPTY_LIST : result;
            }
        });
    }

    @SuppressWarnings("unchecked")
    public List<City> findCities(Locale locale, String term, final Integer limit) {
        final String key = removeSpecialCharacters(term);
        return getHibernateTemplate().executeFind(new HibernateCallback<Object>() {
            public Object doInHibernate(Session session) throws HibernateException, SQLException {
                FullTextSession fullTextSession = Search.getFullTextSession(session);
                QueryBuilder builder = fullTextSession.getSearchFactory().buildQueryBuilder().forEntity(City.class).get();
                Query query = builder.bool()
                        .should(builder.keyword().wildcard()
                                .onField("rusName")
                                .andField("engName")
                                .andField("countryCode")
                                .andField("code")
                                .matching(key + "*").createQuery())
                        .should(builder.keyword().wildcard()
                                .onField("rusName")
                                .andField("engName")
                                .andField("countryCode")
                                .andField("code")
                                .matching(key.toLowerCase() + "*").createQuery())
                        .createQuery();

                logger.debug("Lucene query: " + query);
                List list = fullTextSession.createFullTextQuery(query, City.class).setMaxResults(limit).list();
                return list == null ? Collections.EMPTY_LIST : list;
            }
        });
    }

    @SuppressWarnings("unchecked")
    public List<UserProfile> findProfiles(Locale locale, String term, final Integer limit) {
        final String key = removeSpecialCharacters(term);
        return getHibernateTemplate().executeFind(new HibernateCallback<Object>() {
            public Object doInHibernate(Session session) throws HibernateException, SQLException {
                FullTextSession fullTextSession = Search.getFullTextSession(session);
                QueryBuilder builder = fullTextSession.getSearchFactory().buildQueryBuilder().forEntity(UserProfile.class).get();
                Query query = builder.bool()
                        .should(builder.keyword().wildcard()
                                .onField("firstName")
                                .andField("lastName")
                                .andField("isFemale")
                                .andField("siteUrl")
                                .andField("skypeId")
                                .andField("phone")
                                .andField("cellPhone")
                                .andField("city")
                                .andField("aboutMe")
                                .andField("familyStatus")
                                .andField("height")
                                .andField("width")
                                .andField("appearance")
                                .andField("lifeGoals")
                                .andField("interest")
                                .andField("music")
                                .andField("movies")
                                .andField("books")
                                .matching(key + "*").createQuery())
                        .should(builder.keyword().wildcard()
                                .onField("firstName")
                                .andField("lastName")
                                .andField("isFemale")
                                .andField("siteUrl")
                                .andField("skypeId")
                                .andField("phone")
                                .andField("cellPhone")
                                .andField("city")
                                .andField("aboutMe")
                                .andField("familyStatus")
                                .andField("height")
                                .andField("width")
                                .andField("appearance")
                                .andField("lifeGoals")
                                .andField("interest")
                                .andField("music")
                                .andField("movies")
                                .andField("books")
                                .matching(key.toLowerCase() + "*").createQuery())
                        .createQuery();

                logger.debug("Lucene query: " + query);
                List list = fullTextSession.createFullTextQuery(query, UserProfile.class).setMaxResults(limit).list();
                return list == null ? Collections.EMPTY_LIST : list;
            }
        });
    }

    public static String removeSpecialCharacters(String s) {
        for (String i : symbols) {
            s = s.replace(i, "");
        }
        return s.replace("-", " ");
    }


    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("conf/applicationContext.xml");
        FullTextSearchService bean = context.getBean(FullTextSearchService.class);
        List<UserProfile> list = bean.findProfiles(Locale.US, "werw", 100);

        for (UserProfile profile : list) {
            System.out.println(profile.getId() + " " + profile.getFirstName());
            profile.setFirstName("sergey");
            UserProfileDao profileDao = context.getBean(UserProfileDao.class);
            profileDao.persist(profile);
        }
        System.out.println("---");
        list = bean.findProfiles(Locale.US, "sergey", 100);
        for (UserProfile profile : list) {
            System.out.println(profile.getId() + " " + profile.getFirstName());
        }
    }

}
