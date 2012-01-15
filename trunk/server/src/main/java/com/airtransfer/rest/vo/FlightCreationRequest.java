package com.airtransfer.rest.vo;

import javax.persistence.Column;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * User: sergey
 * Date: 5:00 PM 1/10/12
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.PROPERTY)
public class FlightCreationRequest {

    private String departureDate;
    private String arriveDate;
    private Long fromAirport;
    private Long toAirport;

    private Boolean oneWay;

    private String flightCompanyFrom;
    private String flightCompanyTo;
    private String seatFrom;
    private String seatTo;
    private String terminalFrom;
    private String terminalTo;


    public FlightCreationRequest() {
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
