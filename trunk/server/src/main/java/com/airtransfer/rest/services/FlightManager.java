package com.airtransfer.rest.services;

import com.airtransfer.models.Airport;
import com.airtransfer.models.Flight;
import com.airtransfer.models.User;
import com.airtransfer.models.UserSession;
import com.airtransfer.rest.vo.BaseEntityVOResponse;
import com.airtransfer.rest.vo.BaseListVOResponse;
import com.airtransfer.rest.vo.BaseResponse;
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
                return new BaseEntityVOResponse(false, "Not all required fields are filled.;");
            }

            UserSession session = getSession();
            User user = session.getUser();

            Flight flight = request.model();
            if (request.getFromAirport() != null) {
                Airport from = airportDao.load(request.getFromAirport());
                flight.setFromAirport(from);
            }

            if (request.getToAirport() != null) {
                Airport to = airportDao.load(request.getToAirport());
                flight.setToAirport(to);
            }

            if (flight.getBackFlight() != null && flight.getBackFlight()) {
                if (request.getBackFlight() != null) {
                    Flight returnFlight = request.getBackFlight().model();
                    returnFlight.setOwner(user);
                    flight.setReturnFlight(returnFlight);
                } else {
                    logger.warn("Back flight is empty;");
                }
            }

            flight.setOwner(user);
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
            List<Flight> list = flightDao.getCurrentFlightsByUser(getSession().getUser());
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
            List<Flight> list = flightDao.getOldFlightsByUser(getSession().getUser());
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
            List<Flight> list = flightDao.getFutureFlightsByUser(getSession().getUser());
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
    @Path("/load/{id}")
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public BaseResponse getFlight(@PathParam("id") Long id) {
        try {
            User user = getSession().getUser();
            Flight flight = flightDao.get(id);

            return new BaseResponse();
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            return new BaseResponse(false, e.getMessage());
        }
    }


    @PUT
    @Path("/update/{id}")
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public BaseResponse updateFlight(@PathParam("id") Long id, FlightVO vo) {
        try {
            User user = getSession().getUser();
            Flight flight = flightDao.get(id);
            if (!user.getId().equals(flight.getOwner().getId())) {
                return new BaseResponse(false, "Illegal Access: user is not a owner of the flight");
            }
            Flight model = vo.model();
            if (vo.getFromAirportId() != null) {
                Airport airport = airportDao.get(vo.getFromAirportId());
                flight.setFromAirport(airport);
            }
            if (vo.getToAirportId() != null) {
                Airport airport = airportDao.get(vo.getToAirportId());
                flight.setToAirport(airport);
            }
            flight.update(model);
            flightDao.persist(flight);

            return new BaseResponse();
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            return new BaseResponse(false, e.getMessage());
        }
    }

    private boolean validate(FlightCreationRequest request) {
        if (request.getTwoWays() != null && request.getTwoWays()) {
            return request.getFromAirport() != null && request.getDepartureDate() != null
                    && request.getBackFlight() != null
                    && request.getBackFlight().getFromAirport() != null
                    && request.getBackFlight().getDepartureDate() != null;
        } else {
            return request.getFromAirport() != null && request.getDepartureDate() != null;
        }
    }

}
