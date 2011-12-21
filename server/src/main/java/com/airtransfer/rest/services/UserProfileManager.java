package com.airtransfer.rest.services;

import com.airtransfer.models.User;
import com.airtransfer.models.UserProfile;
import com.airtransfer.models.UserSession;
import com.airtransfer.rest.vo.BaseEntityVORequest;
import com.airtransfer.rest.vo.BaseEntityVOResponse;
import com.airtransfer.rest.vo.vos.AbstractEntityVO;
import com.airtransfer.rest.vo.vos.UserProfileVO;
import com.airtransfer.services.dao.UserProfileDao;
import com.airtransfer.web.utils.SessionTokensHolder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.w3c.dom.Element;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

/**
 * User: Sergey
 * Date: 19.11.11 16:30
 */
@Component
@Path("/user/profile")
public class UserProfileManager extends BaseManager {
    @Autowired
    private UserProfileDao profileDao;

    @GET
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public BaseEntityVOResponse<UserProfileVO> get() {
        final UserSession session = getSession();
        final User user = session.getUser();
        UserProfile userProfile = profileDao.findProfileByUser(user.getId());
        if (userProfile == null) {
            userProfile = new UserProfile();
            userProfile.setUser(user);
            profileDao.save(userProfile);
        }
        userProfile.setAboutMe("aboutMe");
        userProfile.setAppearance("appearance");
        userProfile.setBody("body");
        userProfile.setBooks("books");
        userProfile.setCellPhone("cellPhone");
        userProfile.setCity("city");
        userProfile.setCountry("country");
        userProfile.setCurrentCity("current city");
        userProfile.setCurrentCountry("current country");
        userProfile.setFamilyStatus("family status");
        userProfile.setFirstLanguage("first language");
        userProfile.setFistName("first name");
        userProfile.setHeight(175.40f);
        userProfile.setInterest("interest");
        userProfile.setLastName("last name");
        userProfile.setLifeGoals("goals");
        userProfile.setMale(true);
        userProfile.setMovies("movies");
        userProfile.setMusic("music");
        userProfile.setOccupation("occupation");
        userProfile.setPhone("phone");
        userProfile.setSecondLanguage("secondLanguage");
        userProfile.setSiteUrl("site url");
        userProfile.setSkypeId("skype id");
        userProfile.setThirdLanguage("third language");
        userProfile.setWidth(75.5f);
        profileDao.save(userProfile);
        return new BaseEntityVOResponse<UserProfileVO>(new UserProfileVO(userProfile));
    }

    @PUT
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public BaseEntityVOResponse<UserProfileVO> update(BaseEntityVORequest<UserProfileVO> request) {

/*
        request.model(UserProfileVO.class);
        Element data = (Element) request.getData();
        UserProfileVO vo = convert(UserProfileVO.class, new UserProfileVO(new UserProfile()), data);

        final UserSession session = getSession();
        final User user = session.getUser();

        final UserProfile userProfile = profileDao.findProfileByUser(user.getId());

        final UserProfile model = vo.model();
        model.setId(userProfile.getId());
        model.setUser(userProfile.getUser());

        profileDao.persist(model);

*/
        UserProfile userProfile = new UserProfile();
        userProfile.setAboutMe("aboutMe");
        userProfile.setAppearance("appearance");
        userProfile.setBody("body");
        userProfile.setBooks("books");
        userProfile.setCellPhone("cellPhone");
        userProfile.setCity("city");
        userProfile.setCountry("country");
        userProfile.setCurrentCity("current city");
        userProfile.setCurrentCountry("current country");
        userProfile.setFamilyStatus("family status");
        userProfile.setFirstLanguage("first language");
        userProfile.setFistName("first name");
        userProfile.setHeight(175.40f);
        userProfile.setInterest("interest");
        userProfile.setLastName("last name");
        userProfile.setLifeGoals("goals");
        userProfile.setMale(true);
        userProfile.setMovies("movies");
        userProfile.setMusic("music");
        userProfile.setOccupation("occupation");
        userProfile.setPhone("phone");
        userProfile.setSecondLanguage("secondLanguage");
        userProfile.setSiteUrl("site url");
        userProfile.setSkypeId("skype id");
        userProfile.setThirdLanguage("third language");
        userProfile.setWidth(75.5f);

        return new BaseEntityVOResponse<UserProfileVO>(new UserProfileVO(userProfile));
    }
}
