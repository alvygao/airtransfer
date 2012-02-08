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

    @ManyToOne(targetEntity = User.class)
    @Fetch(FetchMode.JOIN)
    @JoinColumn(name = "user_id")
    private User owner;
    @Column(columnDefinition = "DATE")
    private Date departureDate;
    @Column(columnDefinition = "DATE")
    private Date arriveDate;
    @Column(columnDefinition = "BIT DEFAULT FALSE")
    private Boolean backFlight;

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
    @Column(columnDefinition = "TEXT")
    private String comment;
    @Column()
    private String flightNumber;

    @ManyToOne(targetEntity = Airport.class, fetch = FetchType.EAGER)
    @Fetch(FetchMode.JOIN)
    private Airport fromAirport;
    @ManyToOne(targetEntity = Airport.class, fetch = FetchType.EAGER)
    @Fetch(FetchMode.JOIN)
    private Airport toAirport;


    public void update(Flight model) {
        this.arriveDate = model.arriveDate;
        this.departureDate = model.departureDate;
        this.backFlight = model.backFlight;
        this.flightCompanyFrom = model.flightCompanyFrom;
        this.flightCompanyTo = model.flightCompanyTo;
        this.seatFrom = model.seatFrom;
        this.seatTo = model.seatTo;
        this.terminalFrom = model.terminalFrom;
        this.terminalTo = model.terminalTo;
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
