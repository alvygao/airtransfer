package com.airtransfer.rest.services;

import com.airtransfer.models.Body;
import com.airtransfer.models.Country;
import com.airtransfer.models.Profession;
import com.airtransfer.models.UserLanguage;
import com.airtransfer.rest.vo.BaseEntityVOResponse;
import com.airtransfer.rest.vo.BaseListVOResponse;
import com.airtransfer.rest.vo.vos.PairVO;
import com.airtransfer.rest.vo.vos.UserProfileVO;
import com.airtransfer.services.dao.BodyDao;
import com.airtransfer.services.dao.CountryDao;
import com.airtransfer.services.dao.ProfessionDao;
import com.airtransfer.services.dao.UserLanguageDao;
import org.omg.PortableServer.LIFESPAN_POLICY_ID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.ArrayList;
import java.util.List;

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

}
