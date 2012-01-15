package com.airtransfer.models;


import org.hibernate.search.annotations.*;

import javax.persistence.*;
import java.util.Date;

/**
 * User: sergey
 * Date: 3:51 PM 12/17/11
 */

@Entity
@Indexed
@Table(name = "profiles")
public class UserProfile extends BaseEntity {

    @OneToOne()
    private User user;

    @Column
    @Field(index = Index.TOKENIZED, store = Store.NO)
    private String firstName;

    @Column
    @Field(index = Index.TOKENIZED, store = Store.NO)
    private String lastName;

    @Column(name = "is_female", columnDefinition = "BIT")
    @Field(index = Index.TOKENIZED, store = Store.NO)
    private Boolean isFemale;

    @Column
    @Field(index = Index.TOKENIZED, store = Store.NO)
    private String siteUrl;

    @Column(name = "birthday", columnDefinition = "DATETIME")
    @Field(index = Index.UN_TOKENIZED)
    @DateBridge(resolution = Resolution.DAY)
    private Date birthDay;

    @Column
    @Field(index = Index.TOKENIZED, store = Store.NO)
    private String skypeId;

    @Column
    @Field(index = Index.TOKENIZED, store = Store.NO)
    private String phone;

    @Column
    @Field(index = Index.TOKENIZED, store = Store.NO)
    private String cellPhone;

    @ManyToOne()
    private Country country;

    @ManyToOne()
    private City city;

    @ManyToOne()
    private Country currentCountry;

    @ManyToOne()
    private City currentCity;

    @ManyToOne()
    private UserLanguage firstLanguage;

    @ManyToOne()
    private UserLanguage secondLanguage;

    @ManyToOne()
    private UserLanguage thirdLanguage;

    @ManyToOne()
    private Profession occupation;

    @Column(columnDefinition = "TEXT")
    @Field(index = Index.TOKENIZED, store = Store.NO)
    private String aboutMe;

    @Column
    @Field(index = Index.TOKENIZED, store = Store.NO)
    private String familyStatus;

    @ManyToOne(fetch = FetchType.EAGER)
    private Body body;

    @Column
    @Field(index = Index.TOKENIZED, store = Store.NO)
    private Float height;

    @Column
    @Field(index = Index.TOKENIZED, store = Store.NO)
    private Float width;

    @Column
    @Field(index = Index.TOKENIZED, store = Store.NO)
    private String appearance;

    @Column
    @Field(index = Index.TOKENIZED, store = Store.NO)
    private String lifeGoals;

    @Column
    @Field(index = Index.TOKENIZED, store = Store.NO)
    private String interest;

    @Column
    @Field(index = Index.TOKENIZED, store = Store.NO)
    private String music;

    @Column
    @Field(index = Index.TOKENIZED, store = Store.NO)
    private String movies;

    @Column
    @Field(index = Index.TOKENIZED, store = Store.NO)
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

    public City getCurrentCity() {
        return currentCity;
    }

    public void setCurrentCity(City currentCity) {
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

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }
}
