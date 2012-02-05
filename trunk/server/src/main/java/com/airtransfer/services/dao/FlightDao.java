package com.airtransfer.services.dao;

import com.airtransfer.models.Flight;
import com.airtransfer.models.User;

import java.util.List;

/**
 * User: sergey
 * Date: 3:43 PM 1/10/12
 */
public interface FlightDao extends AbstractDao<Flight, Long> {

    List<Flight> getFlightsByUser(User user);

    List<Flight> getCurrentFlightsByUser(User user);

    List<Flight> getFutureFlightsByUser(User user);

    List<Flight> getOldFlightsByUser(final User user);

}
