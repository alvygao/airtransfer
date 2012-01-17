package com.airtransfer.rest.vo.vos;

import com.airtransfer.models.Flight;

import javax.persistence.Column;
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
    private String toAirport;
    private Boolean oneWay;
    private String flightCompanyFrom;
    private String flightCompanyTo;
    private String seatFrom;
    private String seatTo;
    private String terminalFrom;
    private String terminalTo;


    public FlightVO() {
    }

    public FlightVO(Flight flight) {
        departureDate = SimpleDateFormat.getDateInstance().format(flight.getDepartureDate());
        arriveDate = SimpleDateFormat.getDateInstance().format(flight.getArriveDate());
        fromAirport = flight.getFromAirport().getEngName();
        toAirport = flight.getToAirport().getEngName();
        oneWay = flight.getOneWay();
        flightCompanyFrom = flight.getFlightCompanyFrom();
        flightCompanyTo = flight.getFlightCompanyTo();
        seatFrom = flight.getSeatFrom();
        seatTo = flight.getSeatTo();
        terminalFrom = flight.getTerminalFrom();
        terminalTo = flight.getTerminalTo();
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

    public Boolean getOneWay() {
        return oneWay;
    }

    public void setOneWay(Boolean oneWay) {
        this.oneWay = oneWay;
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

    public String getSeatTo() {
        return seatTo;
    }

    public void setSeatTo(String seatTo) {
        this.seatTo = seatTo;
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
}
