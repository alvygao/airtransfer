package com.airtransfer.rest.services;

import com.airtransfer.models.Airport;
import com.airtransfer.models.Flight;
import com.airtransfer.models.UserSession;
import com.airtransfer.rest.vo.BaseEntityVOResponse;
import com.airtransfer.rest.vo.BaseListVOResponse;
import com.airtransfer.rest.vo.FlightCreationRequest;
import com.airtransfer.rest.vo.vos.FlightVO;
import com.airtransfer.services.dao.AirportDao;
import com.airtransfer.services.dao.FlightDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.ArrayList;
import java.util.List;

/**
 * User: sergey
 * Date: 3:35 PM 1/10/12
 */
@Component
@Path("/flights")
public class FlightManager extends BaseManager {

    @Autowired
    protected FlightDao flightDao;
    @Autowired
    protected AirportDao airportDao;

    @POST
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public BaseEntityVOResponse createFlight(FlightCreationRequest request) {
        try {
            if (!validate(request)) {
                return new BaseEntityVOResponse();
            }

            Flight flight = request.model();
            Airport from = airportDao.load(request.getFromAirport());
            Airport to = airportDao.load(request.getToAirport());
            flight.setFromAirport(from);
            flight.setToAirport(to);

            UserSession session = getSession();
            flight.setOwner(session.getUser());

            flightDao.persist(flight);

            return new BaseEntityVOResponse();
        } catch (Exception e) {
            return onError(e, new BaseEntityVOResponse());
        }

    }

    @GET
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public BaseListVOResponse getFlightsOfUser() {
        try {
            UserSession session = getSession();
            List<Flight> flights = flightDao.getFlightsByUser(session.getUser());
            BaseListVOResponse response = new BaseListVOResponse();
            ArrayList<FlightVO> list = new ArrayList<FlightVO>(flights.size());
            response.setData(list);
            for (Flight flight : flights) {
                list.add(new FlightVO(flight));
            }
            response.setData(list);
            return response;
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            return new BaseListVOResponse(false, e.getMessage());
        }
    }

    @GET
    @Path("/current")
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public BaseListVOResponse getCurrentFlights() {
        try {
            List<Flight> list = flightDao.getFlightsByUser(getSession().getUser());
            BaseListVOResponse response = new BaseListVOResponse();
            ArrayList<FlightVO> flights = new ArrayList<FlightVO>(list.size());
            for (Flight flight : list) {
                flights.add(new FlightVO(flight));
            }
            response.setData(flights);
            return response;
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            return new BaseListVOResponse(false, e.getMessage());
        }
    }

    @GET
    @Path("/removed")
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public BaseListVOResponse getRemovedFlights() {
        try {
            List<Flight> list = flightDao.getFlightsByUser(getSession().getUser());
            BaseListVOResponse response = new BaseListVOResponse();
            ArrayList<FlightVO> flights = new ArrayList<FlightVO>(list.size());
            for (Flight flight : list) {
                flights.add(new FlightVO(flight));
            }
            response.setData(flights);
            return response;
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            return new BaseListVOResponse(false, e.getMessage());
        }
    }

    @GET
    @Path("/future")
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public BaseListVOResponse getFutureFlights() {
        try {
            List<Flight> list = flightDao.getFlightsByUser(getSession().getUser());
            BaseListVOResponse response = new BaseListVOResponse();
            ArrayList<FlightVO> flights = new ArrayList<FlightVO>(list.size());
            for (Flight flight : list) {
                flights.add(new FlightVO(flight));
            }
            response.setData(flights);
            return response;
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            return new BaseListVOResponse(false, e.getMessage());
        }
    }


    private boolean validate(FlightCreationRequest request) {
        return (request.getArriveDate() != null && request.getDepartureDate() != null
                && request.getFromAirport() != null && request.getToAirport() != null);
    }

}
