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
    private CityDao cityDao;
    @Autowired
    private UserLanguageDao languageDao;
    @Autowired
    private ProfessionDao professionDao;

    @GET
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public BaseEntityVOResponse<UserProfileVO> get() {
        try {
            final UserSession session = getSession();
            final User user = session.getUser();

            UserProfile userProfile = profileDao.findProfileByUser(user.getId());
            if (userProfile == null) {
                userProfile = new UserProfile();
                userProfile.setUser(user);
                profileDao.save(userProfile);
            }
            return new BaseEntityVOResponse<UserProfileVO>(new UserProfileVO(userProfile));
        } catch (Exception e) {
            return onError(e, new BaseEntityVOResponse<UserProfileVO>());
        }
    }

    @PUT
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public BaseEntityVOResponse<UserProfileVO> update(BaseEntityVORequest<UserProfileVO> request) {

        UserProfileVO vo = convert(UserProfileVO.class, new UserProfileVO(), (Element) request.getData());

        final UserSession session;
        try {
            session = getSession();
            final User user = session.getUser();

            UserProfile userProfile = profileDao.findProfileByUser(user.getId());
            userProfile.setAboutMe(vo.getAboutMe());
            userProfile.setBirthDay(vo.model().getBirthDay());

            Integer bodyId = vo.getBodyId();
            if (bodyId != null) {
                BodyEnum bodyEnum = BodyEnum.values()[bodyId];
                userProfile.setBody(bodyEnum);
            }

            userProfile.setBooks(vo.getBooks());
            userProfile.setCellPhone(vo.getCellPhone());

            Integer countryId = vo.getCountryId();
            if (countryId != null) {
                userProfile.setCountry(CountryEnum.findById(countryId));
            }

            Integer currentCountryId = vo.getCurrentCountryId();
            if (currentCountryId != null) {
                userProfile.setCurrentCountry(CountryEnum.findById(currentCountryId));
            }

            userProfile.setFamilyStatus(vo.getFamilyStatus());
            userProfile.setFemale(vo.getFemale());

            UserLanguage language = languageDao.get(vo.getFirstLanguageId());
            userProfile.setFirstLanguage(language);

            City city = cityDao.get(vo.getCityId());
            City currentCity = cityDao.get(vo.getCurrentCityId());
            userProfile.setCity(city);
            userProfile.setCurrentCity(currentCity);

            userProfile.setFirstName(vo.getFirstName());
            userProfile.setHeight(vo.getHeight());

            userProfile.setInterest(vo.getInterest());
            userProfile.setLastName(vo.getLastName());

            Integer appearanceId = vo.getAppearanceId();
            if (appearanceId != null) {
                NationEnum anEnum = NationEnum.values()[appearanceId];
                userProfile.setAppearance(anEnum);
            }

            Integer lifeGoalsId = vo.getLifeGoalsId();
            if (lifeGoalsId != null) {
                LifeGoalsEnum anEnum = LifeGoalsEnum.values()[lifeGoalsId];
                userProfile.setLifeGoals(anEnum);
            }
            userProfile.setMovies(vo.getMovies());
            userProfile.setMusic(vo.getMusic());

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
            userProfile.setTwitter(vo.getTwitter());
            userProfile.setFacebook(vo.getFacebook());

            profileDao.persist(userProfile);
            return new BaseEntityVOResponse<UserProfileVO>(new UserProfileVO(userProfile));
        } catch (Exception e) {
            return onError(e, new BaseEntityVOResponse<UserProfileVO>());
        }
    }
}

