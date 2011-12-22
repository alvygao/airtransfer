package com.airtransfer.rest.services;

import com.airtransfer.models.*;
import com.airtransfer.rest.vo.BaseEntityVORequest;
import com.airtransfer.rest.vo.BaseEntityVOResponse;
import com.airtransfer.rest.vo.vos.UserProfileVO;
import com.airtransfer.services.dao.*;
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
    @Autowired
    private BodyDao bodyDao;
    @Autowired
    private CountryDao countryDao;
    @Autowired
    private UserLanguageDao languageDao;
    @Autowired
    private ProfessionDao professionDao;

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
            userProfile.setAboutMe("aboutMe");
            userProfile.setAppearance("appearance");
            userProfile.setBooks("books");
            userProfile.setCellPhone("cellPhone");
            userProfile.setCity("city");
            userProfile.setCurrentCity("current city");
            userProfile.setFamilyStatus("family status");
            userProfile.setFistName("first name");
            userProfile.setHeight(175.40f);
            userProfile.setInterest("interest");
            userProfile.setLastName("last name");
            userProfile.setLifeGoals("goals");
            userProfile.setFemale(true);
            userProfile.setMovies("movies");
            userProfile.setMusic("music");
            userProfile.setPhone("phone");
            userProfile.setSiteUrl("site url");
            userProfile.setSkypeId("skype id");
            userProfile.setWidth(75.5f);
            profileDao.save(userProfile);
        }
        return new BaseEntityVOResponse<UserProfileVO>(new UserProfileVO(userProfile));
    }

    @PUT
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public BaseEntityVOResponse<UserProfileVO> update(BaseEntityVORequest<UserProfileVO> request) {

        final UserProfileVO entity = new UserProfileVO(new UserProfile());
        UserProfileVO vo = this.convert(UserProfileVO.class, entity, (Element) request.getData());

        final UserSession session = getSession();
        final User user = session.getUser();

        UserProfile userProfile = profileDao.findProfileByUser(user.getId());
        userProfile.setAboutMe(vo.getAboutMe());
        userProfile.setAppearance(vo.getAppearance());
        userProfile.setBirthDay(vo.model().getBirthDay());

        Body body = bodyDao.get(vo.getBodyId());
        userProfile.setBody(body);

        userProfile.setBooks(vo.getBooks());
        userProfile.setCellPhone(vo.getCellPhone());
        userProfile.setCity(vo.getCity());

        Country country = countryDao.get(vo.getCountryId());
        userProfile.setCountry(country);

        userProfile.setCurrentCity(vo.getCurrentCity());

        Country country1 = countryDao.get(vo.getCurrentCountryId());
        userProfile.setCurrentCountry(country1);

        userProfile.setFamilyStatus(vo.getFamilyStatus());
        userProfile.setFemale(vo.getFemale());

        UserLanguage language = languageDao.get(vo.getFirstLanguageId());
        userProfile.setFirstLanguage(language);

        userProfile.setFistName(vo.getFistName());
        userProfile.setHeight(vo.getHeight());

        userProfile.setInterest(vo.getInterest());
        userProfile.setLastName(vo.getLastName());
        userProfile.setLifeGoals(vo.getLifeGoals());
        userProfile.setMovies(vo.getMovies());
        userProfile.setMovies(vo.getMusic());

        Profession profession = professionDao.get(vo.getProfessionId());
        userProfile.setOccupation(profession);

        userProfile.setPhone(vo.getPhone());

        Long secondLanguageId = vo.getSecondLanguageId();
        UserLanguage language2 = languageDao.get(secondLanguageId);
        userProfile.setSecondLanguage(language2);
        userProfile.setSiteUrl(vo.getSiteUrl());

        userProfile.setSkypeId(vo.getSkypeId());
        UserLanguage language3 = languageDao.get(vo.getThirdLanguageId());
        userProfile.setThirdLanguage(language3);
        userProfile.setWidth(vo.getWidth());

        profileDao.persist(userProfile);

        return new BaseEntityVOResponse<UserProfileVO>(new UserProfileVO(userProfile));
    }
}
