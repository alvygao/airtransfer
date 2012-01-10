package com.airtransfer.rest.services;

import com.airtransfer.models.*;
import com.airtransfer.rest.vo.BaseListVOResponse;
import com.airtransfer.rest.vo.BaseResponse;
import com.airtransfer.rest.vo.vos.AirportVO;
import com.airtransfer.rest.vo.vos.PairVO;
import com.airtransfer.rest.vo.vos.TrinityVO;
import com.airtransfer.services.FullTextSearchService;
import com.airtransfer.services.dao.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Component;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/**
 * User: Sergey
 * Date: 20.12.11 23:04
 */
@Component
@Path("/search")
public class SearchManager extends BaseManager {

    @Autowired
    private CountryDao countryDao;
    @Autowired
    private BodyDao bodyDao;
    @Autowired
    private UserLanguageDao languageDao;
    @Autowired
    private ProfessionDao professionDao;
    @Autowired
    private CityDao cityDao;
    @Autowired
    private FullTextSearchService textSearchService;


    @GET
    @Path("/countries")
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public BaseListVOResponse get() {
        List<Country> list = (List<Country>) countryDao.listAll();
        BaseListVOResponse response = new BaseListVOResponse();
        ArrayList data = new ArrayList();
        response.setData(data);
        for (Country country : list) {
            data.add(new PairVO(country.getId(), country.getEngName()));
        }
        return response;
    }

    @GET
    @Path("/body")
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public BaseListVOResponse getBody() {
        BaseListVOResponse response = new BaseListVOResponse();
        final List<Body> list = (List<Body>) bodyDao.listAll();
        response.setData(new ArrayList());
        for (Body body : list) {
            response.getData().add(new PairVO(body.getId(), body.getEngName()));
        }
        return response;
    }

    @GET
    @Path("/language")
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public BaseListVOResponse getLanguage() {
        BaseListVOResponse response = new BaseListVOResponse();
        List<UserLanguage> list = (List<UserLanguage>) languageDao.listAll();
        response.setData(new ArrayList());
        for (UserLanguage item : list) {
            response.getData().add(new PairVO(item.getId(), item.getEngName()));
        }
        return response;
    }

    @GET
    @Path("/profession")
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public BaseListVOResponse getProfession() {
        BaseListVOResponse response = new BaseListVOResponse();
        List<Profession> list = (List<Profession>) professionDao.listAll();
        response.setData(new ArrayList());
        for (Profession item : list) {
            response.getData().add(new PairVO(item.getId(), item.getEngName()));
        }
        return response;
    }

    @GET
    @Path("/airports")
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public BaseListVOResponse getAirports(@QueryParam("limit") Integer limit, @QueryParam("term") String term) {
        final Locale locale = LocaleContextHolder.getLocale();
        List<Airport> list = textSearchService.findAirports(locale, term, limit);
        BaseListVOResponse response = new BaseListVOResponse();
        response.setData(new ArrayList<Airport>());
        for (Airport airport : list) {
            response.getData().add(new AirportVO(airport, locale));
        }
        return response;
    }

    @GET
    @Path("/cities")
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public BaseListVOResponse getCountries() {
        final Locale locale = LocaleContextHolder.getLocale();
        final List<City> list = cityDao.listAll();

        BaseListVOResponse response = new BaseListVOResponse();
        response.setData(new ArrayList(list.size()));
        for (City city : list) {
            response.getData().add(new PairVO(city.getId(), city.getEngName()));
        }
        return response;
    }

/*
    @GET
    @Path("/findairports")
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public SearchResponse findAirportsByName(@QueryParam("term") String term, @QueryParam("limit") Integer limit) {
        final Locale locale = LocaleContextHolder.getLocale();
        if (term == null) {
            System.out.println("EMPTY request ");
            return new SearchResponse(term);
        }
        List<Airport> list = textSearchService.findAirports(locale, term, limit != null ? limit : 10);
        final SearchResponse response = new SearchResponse();
        response.setQuery(term);
        if (!list.isEmpty()) {
            ArrayList<String> names = new ArrayList<String>(list.size());
            ArrayList<String> values = new ArrayList<String>(list.size());
            for (Airport airport : list) {
                names.add(airport.getEngName());
                values.add(airport.getIataCode());
            }
            response.setData(values.toArray(new String[list.size()]));
            response.setSuggestions(names.toArray(new String[list.size()]));
        }
        return response;
    }
*/

    @GET
    @Path("/findairports")
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public BaseListVOResponse findAirportsByName(@QueryParam("term") String term, @QueryParam("limit") Integer limit) {
        final Locale locale = LocaleContextHolder.getLocale();
        if (term == null) {
            logger.warn("findAirportsByName; empty search term");
            return new BaseListVOResponse();
        }
        List<Airport> list = textSearchService.findAirports(locale, term, limit != null ? limit : 10);
        if (!list.isEmpty()) {
            ArrayList<TrinityVO> response = new ArrayList<TrinityVO>();
            for (Airport airport : list) {
                response.add(new TrinityVO(airport));
            }
            return new BaseListVOResponse(response);
        }

        return new BaseListVOResponse();
    }

}
