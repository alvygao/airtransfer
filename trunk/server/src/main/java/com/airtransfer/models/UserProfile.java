package com.airtransfer.models;


import javax.persistence.*;
import java.util.Date;

/**
 * User: sergey
 * Date: 3:51 PM 12/17/11
 */

@Entity
@Table(name = "profiles")
public class UserProfile extends BaseEntity {

    @OneToOne(fetch = FetchType.LAZY)
    private User user;

    @Column
    private String firstName;
    @Column
    private String lastName;
    @Column(name = "is_female", columnDefinition = "BIT")
    private Boolean isFemale;
    @Column
    private String siteUrl;
    @Column(name = "birthday", columnDefinition = "DATETIME")
    private Date birthDay;
    @Column
    private String skypeId;
    @Column
    private String phone;
    @Column
    private String cellPhone;

    @ManyToOne(fetch = FetchType.LAZY)
    private Country country;
    @Column
    private String city;

    @ManyToOne(fetch = FetchType.LAZY)
    private Country currentCountry;
    @Column
    private String currentCity;

    @ManyToOne(fetch = FetchType.LAZY)
    private UserLanguage firstLanguage;
    @ManyToOne(fetch = FetchType.LAZY)
    private UserLanguage secondLanguage;
    @ManyToOne(fetch = FetchType.LAZY)
    private UserLanguage thirdLanguage;

    @ManyToOne(fetch = FetchType.LAZY)
    private Profession occupation;
    @Column(columnDefinition = "TEXT")
    private String aboutMe;
    @Column
    private String familyStatus;
    @ManyToOne(fetch = FetchType.LAZY)
    private Body body;
    @Column
    private Float height;
    @Column
    private Float width;
    @Column
    private String appearance;
    @Column
    private String lifeGoals;
    @Column
    private String interest;
    @Column
    private String music;
    @Column
    private String movies;
    @Column
    private String books;


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

    public Date getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(Date birthDay) {
        this.birthDay = birthDay;
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

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCurrentCity() {
        return currentCity;
    }

    public void setCurrentCity(String currentCity) {
        this.currentCity = currentCity;
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

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }

    public Country getCurrentCountry() {
        return currentCountry;
    }

    public void setCurrentCountry(Country currentCountry) {
        this.currentCountry = currentCountry;
    }

    public UserLanguage getFirstLanguage() {
        return firstLanguage;
    }

    public void setFirstLanguage(UserLanguage firstLanguage) {
        this.firstLanguage = firstLanguage;
    }

    public UserLanguage getSecondLanguage() {
        return secondLanguage;
    }

    public void setSecondLanguage(UserLanguage secondLanguage) {
        this.secondLanguage = secondLanguage;
    }

    public UserLanguage getThirdLanguage() {
        return thirdLanguage;
    }

    public void setThirdLanguage(UserLanguage thirdLanguage) {
        this.thirdLanguage = thirdLanguage;
    }

    public Profession getOccupation() {
        return occupation;
    }

    public void setOccupation(Profession occupation) {
        this.occupation = occupation;
    }

    public Body getBody() {
        return body;
    }

    public void setBody(Body body) {
        this.body = body;
    }
}
