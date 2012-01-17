package com.airtransfer.models;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.util.Date;

/**
 * User: sergey
 * Date: 3:40 PM 1/10/12
 */
@Entity
@Table(name = "flights")
public class Flight extends BaseEntity {

    @ManyToOne(targetEntity = User.class, fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User owner;
    @Column
    private Date departureDate;
    @Column
    private Date arriveDate;
    @Column(columnDefinition = "BIT DEFAULT FALSE")
    private Boolean oneWay;

    @Column
    private String flightCompanyFrom;
    @Column
    private String flightCompanyTo;
    @Column
    private String seatFrom;
    @Column
    private String seatTo;
    @Column
    private String terminalFrom;
    @Column
    private String terminalTo;

    @ManyToOne(targetEntity = Airport.class, fetch = FetchType.EAGER)
    @Fetch(FetchMode.JOIN)
    private Airport fromAirport;
    @ManyToOne(targetEntity = Airport.class, fetch = FetchType.EAGER)
    @Fetch(FetchMode.JOIN)
    private Airport toAirport;

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

    public User getOwner() {
        return owner;
    }

    public void setOwner(User owner) {
        this.owner = owner;
    }

    public Date getDepartureDate() {
        return departureDate;
    }

    public void setDepartureDate(Date departureDate) {
        this.departureDate = departureDate;
    }

    public Date getArriveDate() {
        return arriveDate;
    }

    public void setArriveDate(Date arriveDate) {
        this.arriveDate = arriveDate;
    }

    public Airport getFromAirport() {
        return fromAirport;
    }

    public void setFromAirport(Airport fromAirport) {
        this.fromAirport = fromAirport;
    }

    public Airport getToAirport() {
        return toAirport;
    }

    public void setToAirport(Airport toAirport) {
        this.toAirport = toAirport;
    }


}
