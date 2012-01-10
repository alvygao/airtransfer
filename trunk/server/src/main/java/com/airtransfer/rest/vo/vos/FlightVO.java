package com.airtransfer.rest.vo.vos;

import com.airtransfer.models.Flight;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

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

   public FlightVO() {
   }

   public FlightVO(Flight flight) {
      departureDate = flight.getDepartureDate();
      arriveDate = flight.getArriveDate();
      fromAirport = flight.getFromAirport().getEngName();
      toAirport = flight.getToAirport().getEngName();
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
}
