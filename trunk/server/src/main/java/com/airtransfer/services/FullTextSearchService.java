package com.airtransfer.services;

import com.airtransfer.models.Airport;

import java.util.List;
import java.util.Locale;

/**
 * User: Sergey
 * Date: 03.01.12 11:34
 */
public interface FullTextSearchService {

    public void createIndex();

    public List<Airport> findAirports(Locale locale, String term, Integer limit);
}
