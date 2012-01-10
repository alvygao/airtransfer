package com.airtransfer.rest.vo;

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
}
