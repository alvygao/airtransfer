package com.airtransfer.rest.vo.vos;

import com.airtransfer.models.UserProfile;
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
    private Long bodyId;
    private String bodyType;
    private Long countryId;
    private Long cityId;
    private Long currentCityId;
    private Long currentCountryId;
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
    private String familyStatus;

    private Float height;
    private Float width;
    private String appearance;
    private String lifeGoals;
    private String interest;
    private String music;
    private String movies;
    private String books;

    public UserProfileVO(UserProfile entity) {
        realId = entity.getId();
        bodyId = entity.getBody() != null ? entity.getBody().getId() : null;

        countryId = entity.getCountry() != null ? entity.getCountry().getId() : null;
        cityId = -1l;
        currentCityId = -1l;
        currentCountryId = entity.getCurrentCountry() != null ? entity.getCurrentCountry().getId() : null;
        firstLanguageId = entity.getFirstLanguage() != null ? entity.getFirstLanguage().getId() : null;
        secondLanguageId = entity.getSecondLanguage() != null ? entity.getSecondLanguage().getId() : null;
        thirdLanguageId = entity.getThirdLanguage() != null ? entity.getThirdLanguage().getId() : null;
        professionId = entity.getOccupation() != null ? entity.getOccupation().getId() : null;

        firstName = entity.getFirstName();
        lastName = entity.getLastName();
        isFemale = entity.getFemale();

        siteUrl = entity.getSiteUrl();
        birthDay = entity.getBirthDay();
        skypeId = entity.getSkypeId();
        phone = entity.getPhone();
        cellPhone = entity.getCellPhone();
        aboutMe = entity.getAboutMe();
        familyStatus = entity.getFamilyStatus();

        height = entity.getHeight();
        width = entity.getWidth();
        appearance = entity.getAppearance();
        lifeGoals = entity.getLifeGoals();
        interest = entity.getInterest();
        music = entity.getMusic();
        movies = entity.getMovies();
        books = entity.getBooks();
    }

    public UserProfileVO() {
    }

    public UserProfile model() {

        UserProfile entity = new UserProfile();

        entity.setId(realId);
        entity.setFirstName(firstName);
        entity.setLastName(lastName);
        entity.setFemale(isFemale);

        entity.setSiteUrl(siteUrl);

        entity.setBirthDay(birthDay);
        entity.setSkypeId(skypeId);
        entity.setPhone(phone);
        entity.setCellPhone(cellPhone);
        entity.setAboutMe(aboutMe);
        entity.setFamilyStatus(familyStatus);

        entity.setHeight(height);
        entity.setWidth(width);
        entity.setAboutMe(appearance);
        entity.setLifeGoals(lifeGoals);
        entity.setInterest(interest);
        entity.setMusic(music);
        entity.setMovies(movies);
        entity.setBooks(books);
        height = entity.getHeight();
        width = entity.getWidth();
        appearance = entity.getAppearance();
        lifeGoals = entity.getLifeGoals();
        interest = entity.getInterest();
        music = entity.getMusic();
        movies = entity.getMovies();
        books = entity.getBooks();
        return entity;
    }

    public String getBirthDay() {
        if (birthDay != null) {
            return SimpleDateFormat.getDateInstance().format(birthDay);
        }
        return null;
    }

    public void setBirthDay(String birthDay) {
        if (birthDay != null) {
            try {
                this.birthDay = SimpleDateFormat.getDateInstance().parse(birthDay.replace('/', '.'));
            } catch (ParseException e) {
                logger.warn(e.getMessage());
            }
        }
    }

    public Long getBodyId() {
        return bodyId;
    }

    public void setBodyId(Long bodyId) {
        this.bodyId = bodyId;
    }

    public Long getRealId() {
        return realId;
    }

    public void setRealId(Long id) {
        this.realId = id;
    }

    public Long getCountryId() {
        return countryId;
    }

    public void setCountryId(Long countryId) {
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

    public Long getCurrentCountryId() {
        return currentCountryId;
    }

    public void setCurrentCountryId(Long currentCountryId) {
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

    public String getFamilyStatus() {
        return familyStatus;
    }

    public void setFamilyStatus(String familyStatus) {
        this.familyStatus = familyStatus;
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

    public String getAppearance() {
        return appearance;
    }

    public void setAppearance(String appearance) {
        this.appearance = appearance;
    }

    public String getLifeGoals() {
        return lifeGoals;
    }

    public void setLifeGoals(String lifeGoals) {
        this.lifeGoals = lifeGoals;
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
}
