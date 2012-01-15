package com.airtransfer.services;

import com.airtransfer.models.Airport;
import com.airtransfer.models.City;
import com.airtransfer.models.UserProfile;

import java.util.List;
import java.util.Locale;

/**
 * User: Sergey
 * Date: 03.01.12 11:34
 */
public interface FullTextSearchService {

    public void createIndex();

    public List<Airport> findAirports(Locale locale, String term, Integer limit);

    public List<City> findCities(Locale locale, String term, Integer limit);

    public List<UserProfile> findProfiles(Locale locale, String term, final Integer limit);
}
