package com.airtransfer.models;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;

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
   private String departureDate;
   @Column
   private String arriveDate;

   @ManyToOne(targetEntity = Airport.class, fetch = FetchType.EAGER)
   @Fetch(FetchMode.JOIN)
   private Airport fromAirport;
   @ManyToOne(targetEntity = Airport.class, fetch = FetchType.EAGER)
   @Fetch(FetchMode.JOIN)
   private Airport toAirport;

   public User getOwner() {
      return owner;
   }

   public void setOwner(User owner) {
      this.owner = owner;
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
