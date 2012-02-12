package com.airtransfer.rest.vo.vos;

import com.airtransfer.models.UserProfile;
import com.airtransfer.utils.DateUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * User: sergey
 * Date: 3:51 PM 12/17/11
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.PROPERTY)
public class UserProfileVO extends AbstractEntityVO<UserProfile> {

    private Logger logger = LoggerFactory.getLogger(getClass());

    private Long realId;
    private Integer bodyId;
    private String bodyType;
    private Integer countryId;
    private Long cityId;
    private String cityName;
    private Long currentCityId;
    private String currentCityName;
    private Integer currentCountryId;
    private Long firstLanguageId;
    private Long secondLanguageId;
    private Long thirdLanguageId;
    private Long professionId;

    private String firstName;
    private String lastName;
    private Boolean isFemale;

    private String siteUrl;
    private Date birthDay;
    private String skypeId;
    private String phone;
    private String cellPhone;
    private String aboutMe;
    private Integer familyStatusId;

    private Float height;
    private Float width;
    private Integer appearanceId;
    private Integer lifeGoalsId;
    private String interest;
    private String music;
    private String movies;
    private String books;
    private String facebook;
    private String twitter;
    private String creationDate;

    public UserProfileVO(UserProfile entity) {
        realId = entity.getId();
        bodyId = entity.getBody() != null ? entity.getBody().ordinal() : null;
        lifeGoalsId = entity.getLifeGoals() != null ? entity.getLifeGoals().ordinal() : null;
        countryId = entity.getCountry() != null ? entity.getCountry().getId() : null;
        cityId = entity.getCity() != null ? entity.getCity().getId() : null;
        currentCityId = entity.getCurrentCity() != null ? entity.getCurrentCity().getId() : null;
        cityName = entity.getCity() != null ? entity.getCity().getEngName() : null;
        currentCityName = entity.getCurrentCity() != null ? entity.getCurrentCity().getEngName() : null;
        currentCountryId = entity.getCurrentCountry() != null ? entity.getCurrentCountry().getId() : null;
        firstLanguageId = entity.getFirstLanguage() != null ? entity.getFirstLanguage().getId() : null;
        secondLanguageId = entity.getSecondLanguage() != null ? entity.getSecondLanguage().getId() : null;
        thirdLanguageId = entity.getThirdLanguage() != null ? entity.getThirdLanguage().getId() : null;
        professionId = entity.getOccupation() != null ? entity.getOccupation().getId() : null;
        appearanceId = entity.getAppearance() != null ? entity.getAppearance().getId() : null;
        familyStatusId = entity.getFamilyStatus() != null ? entity.getFamilyStatus().getId() : null;

        firstName = entity.getFirstName() != null ? entity.getFirstName().toUpperCase() : null;
        lastName = entity.getLastName() != null ? entity.getLastName().toUpperCase() : null;
        isFemale = entity.getFemale();

        siteUrl = entity.getSiteUrl();
        birthDay = entity.getBirthDay();
        skypeId = entity.getSkypeId();
        phone = entity.getPhone();
        cellPhone = entity.getCellPhone();
        aboutMe = entity.getAboutMe();


        height = entity.getHeight();
        width = entity.getWidth();

        interest = entity.getInterest();
        music = entity.getMusic();
        movies = entity.getMovies();
        books = entity.getBooks();
        twitter = entity.getTwitter();
        facebook = entity.getFacebook();
        creationDate = DateUtils.formatFriendly(entity.getCreated());

    }

    public UserProfileVO() {
    }

    public UserProfile model() {

        UserProfile entity = new UserProfile();

        entity.setId(realId);
        entity.setFirstName(firstName != null ? firstName.toUpperCase() : null);
        entity.setLastName(lastName != null ? lastName.toUpperCase() : null);
        entity.setFemale(isFemale);

        entity.setSiteUrl(siteUrl);

        entity.setBirthDay(birthDay);
        entity.setSkypeId(skypeId);
        entity.setPhone(phone);
        entity.setCellPhone(cellPhone);
        entity.setAboutMe(aboutMe);

        entity.setHeight(height);
        entity.setWidth(width);
        entity.setAboutMe(aboutMe);
        entity.setInterest(interest);
        entity.setMusic(music);
        entity.setMovies(movies);
        entity.setBooks(books);
        entity.setTwitter(twitter);
        entity.setFacebook(facebook);

        return entity;
    }

    public String getBirthDay() {
        if (birthDay != null) {
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS");
            return format.format(birthDay);
        }
        return null;
    }

    public void setBirthDay(String birthDay) {
        if (birthDay != null) {
            try {
                SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS");
                this.birthDay = format.parse(birthDay);
            } catch (ParseException e) {
                logger.warn(e.getMessage());
            }
        }
    }

    public Integer getBodyId() {
        return bodyId;
    }

    public void setBodyId(Integer bodyId) {
        this.bodyId = bodyId;
    }

    public Long getRealId() {
        return realId;
    }

    public void setRealId(Long id) {
        this.realId = id;
    }

    public Integer getCountryId() {
        return countryId;
    }

    public void setCountryId(Integer countryId) {
        this.countryId = countryId;
    }

    public Long getCityId() {
        return cityId;
    }

    public void setCityId(Long cityId) {
        this.cityId = cityId;
    }

    public Long getCurrentCityId() {
        return currentCityId;
    }

    public void setCurrentCityId(Long currentCityId) {
        this.currentCityId = currentCityId;
    }

    public Integer getCurrentCountryId() {
        return currentCountryId;
    }

    public void setCurrentCountryId(Integer currentCountryId) {
        this.currentCountryId = currentCountryId;
    }

    public Long getFirstLanguageId() {
        return firstLanguageId;
    }

    public void setFirstLanguageId(Long firstLanguageId) {
        this.firstLanguageId = firstLanguageId;
    }

    public Long getSecondLanguageId() {
        return secondLanguageId;
    }

    public void setSecondLanguageId(Long secondLanguageId) {
        this.secondLanguageId = secondLanguageId;
    }

    public Long getThirdLanguageId() {
        return thirdLanguageId;
    }

    public void setThirdLanguageId(Long thirdLanguageId) {
        this.thirdLanguageId = thirdLanguageId;
    }

    public Long getProfessionId() {
        return professionId;
    }

    public void setProfessionId(Long professionId) {
        this.professionId = professionId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Boolean getFemale() {
        return isFemale;
    }

    public void setFemale(Boolean female) {
        isFemale = female;
    }

    public String getSiteUrl() {
        return siteUrl;
    }

    public void setSiteUrl(String siteUrl) {
        this.siteUrl = siteUrl;
    }

    public String getSkypeId() {
        return skypeId;
    }

    public void setSkypeId(String skypeId) {
        this.skypeId = skypeId;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCellPhone() {
        return cellPhone;
    }

    public void setCellPhone(String cellPhone) {
        this.cellPhone = cellPhone;
    }

    public String getAboutMe() {
        return aboutMe;
    }

    public void setAboutMe(String aboutMe) {
        this.aboutMe = aboutMe;
    }

    public Integer getFamilyStatusId() {
        return familyStatusId;
    }

    public void setFamilyStatusId(Integer familyStatusId) {
        this.familyStatusId = familyStatusId;
    }

    public Float getHeight() {
        return height;
    }

    public void setHeight(Float height) {
        this.height = height;
    }

    public Float getWidth() {
        return width;
    }

    public void setWidth(Float width) {
        this.width = width;
    }

    public Integer getAppearanceId() {
        return appearanceId;
    }

    public void setAppearanceId(Integer appearanceId) {
        this.appearanceId = appearanceId;
    }

    public Integer getLifeGoalsId() {
        return lifeGoalsId;
    }

    public void setLifeGoalsId(Integer lifeGoalsId) {
        this.lifeGoalsId = lifeGoalsId;
    }

    public String getInterest() {
        return interest;
    }

    public void setInterest(String interest) {
        this.interest = interest;
    }

    public String getMusic() {
        return music;
    }

    public void setMusic(String music) {
        this.music = music;
    }

    public String getMovies() {
        return movies;
    }

    public void setMovies(String movies) {
        this.movies = movies;
    }

    public String getBooks() {
        return books;
    }

    public void setBooks(String books) {
        this.books = books;
    }

    public String getBodyType() {
        return bodyType;
    }

    public void setBodyType(String bodyType) {
        this.bodyType = bodyType;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public String getCurrentCityName() {
        return currentCityName;
    }

    public void setCurrentCityName(String currentCityName) {
        this.currentCityName = currentCityName;
    }

    public String getFacebook() {
        return facebook;
    }

    public void setFacebook(String facebook) {
        this.facebook = facebook;
    }

    public String getTwitter() {
        return twitter;
    }

    public void setTwitter(String twitter) {
        this.twitter = twitter;
    }

    public String getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(String creationDate) {
        this.creationDate = creationDate;
    }
}
