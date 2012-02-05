package com.airtransfer.rest.vo;

import com.airtransfer.models.Flight;
import com.airtransfer.utils.DateUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

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

    private Logger logger = LoggerFactory.getLogger(getClass());

    private Date departureDate;
    private Date arriveDate;
    private Long fromAirport;
    private Long toAirport;

    private Boolean twoWays;

    private String flightCompanyFrom;
    private String flightCompanyTo;
    private String seatFrom;
    private String seatTo;
    private String terminalFrom;
    private String terminalTo;

    public Flight model() {
        Flight flight = new Flight();
        flight.setArriveDate(arriveDate);
        flight.setDepartureDate(departureDate);
        flight.setFlightCompanyFrom(flightCompanyFrom);
        flight.setFlightCompanyTo(flightCompanyTo);
        flight.setSeatFrom(seatFrom);
        flight.setSeatTo(seatTo);
        flight.setTerminalFrom(terminalFrom);
        flight.setTerminalTo(terminalTo);
        flight.setBackFlight(twoWays);

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
