package com.airtransfer.rest.vo;

import com.airtransfer.models.Flight;
import com.airtransfer.utils.DateUtils;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * User: sergey
 * Date: 5:00 PM 1/10/12
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.PROPERTY)
public class FlightCreationRequest {

    private Long fromAirport;
    private Date departureDate;
    private String seatFrom;
    private String terminalFrom;
    private String flightNumber;

    private Long toAirport;
    private Date arriveDate;
    private String terminalTo;
    private String flightComment;

    private Boolean twoWays;


    private FlightCreationRequest backFlight;

    public Flight model() {
        Flight flight = new Flight();
        flight.setArriveDate(arriveDate);
        flight.setDepartureDate(departureDate);
        flight.setTerminalFrom(terminalFrom);
        flight.setTerminalTo(terminalTo);
        flight.setBackFlight(twoWays);
        flight.setFlightNumber(flightNumber);
        flight.setComment(flightComment);
        flight.setSeatFrom(seatFrom);
        return flight;
    }

    public FlightCreationRequest() {
    }

    public String getDepartureDate() {
        return (departureDate != null) ? SimpleDateFormat.getDateInstance().format(departureDate) : null;
    }

    public void setDepartureDate(String departureDate) {
        this.departureDate = DateUtils.parse(departureDate);
    }

    public String getArriveDate() {
        return (arriveDate != null) ? SimpleDateFormat.getDateInstance().format(arriveDate) : null;
    }

    public void setArriveDate(String arriveDate) {
        this.arriveDate = DateUtils.parse(arriveDate);
    }

    public Long getFromAirport() {
        return fromAirport;
    }

    public void setFromAirport(Long fromAirport) {
        this.fromAirport = fromAirport;
    }

    public Long getToAirport() {
        return toAirport;
    }

    public void setToAirport(Long toAirport) {
        this.toAirport = toAirport;
    }

    public Boolean getTwoWays() {
        return twoWays;
    }

    public void setTwoWays(Boolean twoWays) {
        this.twoWays = twoWays;
    }

    public String getSeatFrom() {
        return seatFrom;
    }

    public void setSeatFrom(String seatFrom) {
        this.seatFrom = seatFrom;
    }

    public String getTerminalFrom() {
        return terminalFrom;
    }

    public void setTerminalFrom(String terminalFrom) {
        this.terminalFrom = terminalFrom;
    }

    public String getTerminalTo() {
        return terminalTo;
    }

    public void setTerminalTo(String terminalTo) {
        this.terminalTo = terminalTo;
    }

    public String getFlightNumber() {
        return flightNumber;
    }

    public void setFlightNumber(String flightNumber) {
        this.flightNumber = flightNumber;
    }

    public String getFlightComment() {
        return flightComment;
    }

    public void setFlightComment(String flightComment) {
        this.flightComment = flightComment;
    }

    public FlightCreationRequest getBackFlight() {
        return backFlight;
    }

    public void setBackFlight(FlightCreationRequest backFlight) {
        this.backFlight = backFlight;
    }
}
