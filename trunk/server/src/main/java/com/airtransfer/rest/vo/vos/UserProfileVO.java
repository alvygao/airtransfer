package com.airtransfer.rest.vo.vos;

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

    public UserProfileVO() {
    }

    public UserProfileVO(UserProfile profile) {
        super(profile);
    }

    public String getFistName() {
        return entity.getFistName();
    }

    public void setFistName(String fistName) {
        entity.setFistName(fistName);
    }

    public String getLastName() {
        return entity.getLastName();
    }

    public void setLastName(String lastName) {
        entity.setLastName(lastName);
    }

    public Boolean getMale() {
        return entity.getMale();
    }

    public void setMale(Boolean male) {
        entity.setMale(male);
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

    public String getCountry() {
        return entity.getCountry();
    }

    public void setCountry(String country) {
        entity.setCountry(country);
    }

    public String getCity() {
        return entity.getCity();
    }

    public void setCity(String city) {
        entity.setCity(city);
    }

    public String getCurrentCountry() {
        return entity.getCurrentCountry();
    }

    public void setCurrentCountry(String currentCountry) {
        entity.setCurrentCountry(currentCountry);
    }

    public String getCurrentCity() {
        return entity.getCurrentCity();
    }

    public void setCurrentCity(String currentCity) {
        entity.setCurrentCity(currentCity);
    }

    public String getFirstLanguage() {
        return entity.getFirstLanguage();
    }

    public void setFirstLanguage(String firstLanguage) {
        entity.setFirstLanguage(firstLanguage);
    }

    public String getSecondLanguage() {
        return entity.getSecondLanguage();
    }

    public void setSecondLanguage(String secondLanguage) {
        entity.setSecondLanguage(secondLanguage);
    }

    public String getThirdLanguage() {
        return entity.getThirdLanguage();
    }

    public void setThirdLanguage(String thirdLanguage) {
        entity.setThirdLanguage(thirdLanguage);
    }

    public String getOccupation() {
        return entity.getOccupation();
    }

    public void setOccupation(String occupation) {
        entity.setOccupation(occupation);
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

    public String getBody() {
        return entity.getBody();
    }

    public void setBody(String body) {
        entity.setBody(body);
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
}
