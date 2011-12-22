package com.airtransfer.rest.vo.vos;

import com.airtransfer.models.BaseEntity;
import com.airtransfer.models.UserProfile;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;

/**
 * User: sergey
 * Date: 3:51 PM 12/17/11
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.PROPERTY)
public class UserProfileVO extends AbstractEntityVO<UserProfile> {

    private Long bodyId;
    private Long countryId;
    private Long currentCountryId;
    private Long firstLanguageId;
    private Long secondLanguageId;
    private Long thirdLanguageId;
    private Long professionId;


    public UserProfileVO() {
    }

    public UserProfileVO(UserProfile profile) {
        super(profile);
    }

    public String getFirstName() {
        return entity.getFirstName();
    }

    public void setFirstName(String fistName) {
        entity.setFirstName(fistName);
    }

    public String getLastName() {
        return entity.getLastName();
    }

    public void setLastName(String lastName) {
        entity.setLastName(lastName);
    }

    public Boolean getFemale() {
        return entity.getFemale();
    }

    public void setFemale(Boolean male) {
        entity.setFemale(male);
    }

    public String getSiteUrl() {
        return entity.getSiteUrl();
    }

    public void setSiteUrl(String siteUrl) {
        entity.setSiteUrl(siteUrl);
    }

    public String getBirthDay() {
        if (entity.getBirthDay() != null) {
            return DateFormat.getDateInstance().format(entity.getBirthDay());
        }
        return null;
    }

    public void setBirthDay(String birthDay) {
        if (birthDay != null) {
            try {
                Date date = DateFormat.getDateInstance().parse(birthDay);
                entity.setBirthDay(date);
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
    }

    public String getSkypeId() {
        return entity.getSkypeId();
    }

    public void setSkypeId(String skypeId) {
        entity.setSkypeId(skypeId);
    }

    public String getPhone() {
        return entity.getPhone();
    }

    public void setPhone(String phone) {
        entity.setPhone(phone);
    }

    public String getCellPhone() {
        return entity.getCellPhone();
    }

    public void setCellPhone(String cellPhone) {
        entity.setCellPhone(cellPhone);
    }

    public String getCity() {
        return entity.getCity();
    }

    public void setCity(String city) {
        entity.setCity(city);
    }

    public String getCurrentCity() {
        return entity.getCurrentCity();
    }

    public void setCurrentCity(String currentCity) {
        entity.setCurrentCity(currentCity);
    }

    public String getAboutMe() {
        return entity.getAboutMe();
    }

    public void setAboutMe(String aboutMe) {
        entity.setAboutMe(aboutMe);
    }

    public String getFamilyStatus() {
        return entity.getFamilyStatus();
    }

    public void setFamilyStatus(String familyStatus) {
        entity.setFamilyStatus(familyStatus);
    }

    public Long getBodyId() {
        return extractId(entity.getBody());
    }

    public void setBodyId(Long body) {

    }

    public Long getCountryId() {
        return 123l;
    }

    public void setCountryId(Long body) {

    }

    public Long getCurrentCountryId() {
        return 123l;
    }

    public void setCurrentCountryId(Long body) {

    }

    public Long getFirstLanguageId() {
        return 123l;
    }

    public void setFirstLanguageId(Long body) {

    }

    public Long getSecondLanguageId() {
        return 123l;
    }

    public void setSecondLanguageId(Long body) {

    }

    public Long getThirdLanguageId() {
        return 123l;
    }

    public void setThirdLanguageId(Long body) {

    }

    public Long getOccupationId() {
        return 123l;
    }

    public void setOccupationId(Long body) {

    }

    public Float getHeight() {
        return entity.getHeight();
    }

    public void setHeight(Float height) {
        entity.setHeight(height);
    }

    public Float getWidth() {
        return entity.getWidth();
    }

    public void setWidth(Float width) {
        entity.setWidth(width);
    }

    public String getAppearance() {
        return entity.getAppearance();
    }

    public void setAppearance(String appearance) {
        entity.setAppearance(appearance);
    }

    public String getLifeGoals() {
        return entity.getLifeGoals();
    }

    public void setLifeGoals(String lifeGoals) {
        entity.getLifeGoals();
    }

    public String getInterest() {
        return entity.getInterest();
    }

    public void setInterest(String interest) {
        entity.setInterest(interest);
    }

    public String getMusic() {
        return entity.getMusic();
    }

    public void setMusic(String music) {
        entity.setMusic(music);
    }

    public String getMovies() {
        return entity.getMovies();
    }

    public void setMovies(String movies) {
        entity.setMovies(movies);
    }

    public String getBooks() {
        return entity.getBooks();
    }

    public void setBooks(String books) {
        entity.setBooks(books);
    }

    protected Long extractId(BaseEntity entity) {
        if (entity != null) {
            return entity.getId();
        } else {
            return null;
        }
    }

    public Long getProfessionId() {
        return professionId;
    }

    public void setProfessionId(Long professionId) {
        this.professionId = professionId;
    }
}
