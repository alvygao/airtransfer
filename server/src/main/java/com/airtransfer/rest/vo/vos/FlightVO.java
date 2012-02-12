package com.airtransfer.rest.vo.vos;

import com.airtransfer.models.Flight;
import com.airtransfer.utils.DateUtils;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import java.text.SimpleDateFormat;

/**
 * User: sergey
 * Date: 6:27 PM 1/10/12
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.PROPERTY)
public class FlightVO {

    private String departureDate;
    private String arriveDate;
    private String fromAirport;
    private Long fromAirportId;
    private String toAirport;
    private Long toAirportId;
    private Boolean backFlight;
    private String flightCompanyFrom;
    private String flightCompanyTo;
    private String seatFrom;
    private String terminalFrom;
    private String terminalTo;
    private String comment;
    private String flightNumber;
    private Long realId;


    public FlightVO() {
    }

    public Flight model() {
        Flight flight = new Flight();
        flight.setDepartureDate(DateUtils.parse(departureDate, "yyyy-MM-dd"));
        flight.setArriveDate(DateUtils.parse(arriveDate, "yyyy-MM-dd"));
        flight.setBackFlight(this.backFlight);
        flight.setFlightCompanyFrom(this.flightCompanyFrom);
        flight.setFlightCompanyTo(this.flightCompanyTo);
        flight.setSeatFrom(this.seatFrom);
        flight.setTerminalFrom(this.terminalFrom);
        flight.setTerminalTo(this.terminalTo);
        flight.setId(this.realId);
        flight.setComment(this.comment);
        flight.setFlightNumber(this.flightNumber);
        return flight;
    }

    public FlightVO(Flight flight) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        if (flight.getDepartureDate() != null) {
            departureDate = format.format(flight.getDepartureDate());
        }
        if (flight.getArriveDate() != null) {
            arriveDate = format.format(flight.getArriveDate());
        }
        if (flight.getFromAirport() != null) {
            fromAirport = flight.getFromAirport().getEngName() + " "  + flight.getFromAirport().getCountryCode();
            fromAirportId = flight.getFromAirport().getId();
        }

        if (flight.getToAirport() != null) {
            toAirport = flight.getToAirport().getEngName();
            toAirportId = flight.getToAirport().getId();
        }
        backFlight = flight.getBackFlight();
        flightCompanyFrom = flight.getFlightCompanyFrom();
        flightCompanyTo = flight.getFlightCompanyTo();
        seatFrom = flight.getSeatFrom();

        terminalFrom = flight.getTerminalFrom();
        terminalTo = flight.getTerminalTo();
        realId = flight.getId();

        flightNumber = flight.getFlightNumber();
        comment = flight.getComment();
    }

    public String getDepartureDate() {
        return departureDate;
    }

    public void setDepartureDate(String departureDate) {
        this.departureDate = departureDate;
    }

    public String getArriveDate() {
        return arriveDate;
    }

    public void setArriveDate(String arriveDate) {
        this.arriveDate = arriveDate;
    }

    public String getFromAirport() {
        return fromAirport;
    }

    public void setFromAirport(String fromAirport) {
        this.fromAirport = fromAirport;
    }

    public String getToAirport() {
        return toAirport;
    }

    public void setToAirport(String toAirport) {
        this.toAirport = toAirport;
    }

    public Boolean getBackFlight() {
        return backFlight;
    }

    public void setBackFlight(Boolean backFlight) {
        this.backFlight = backFlight;
    }

    public String getFlightCompanyFrom() {
        return flightCompanyFrom;
    }

    public void setFlightCompanyFrom(String flightCompanyFrom) {
        this.flightCompanyFrom = flightCompanyFrom;
    }

    public String getFlightCompanyTo() {
        return flightCompanyTo;
    }

    public void setFlightCompanyTo(String flightCompanyTo) {
        this.flightCompanyTo = flightCompanyTo;
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

    public Long getRealId() {
        return realId;
    }

    public void setRealId(Long realId) {
        this.realId = realId;
    }

    public Long getFromAirportId() {
        return fromAirportId;
    }

    public void setFromAirportId(Long fromAirportId) {
        this.fromAirportId = fromAirportId;
    }

    public Long getToAirportId() {
        return toAirportId;
    }

    public void setToAirportId(Long toAirportId) {
        this.toAirportId = toAirportId;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getFlightNumber() {
        return flightNumber;
    }

    public void setFlightNumber(String flightNumber) {
        this.flightNumber = flightNumber;
    }
}
