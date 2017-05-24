/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import java.io.*;        
import javax.xml.bind.annotation.*;
/**
 *
 * @author 11661143
 */

@XmlAccessorType(XmlAccessType.FIELD)
public class Flight implements Serializable{
    
    @XmlElement(name = "flightID")    
    private String flightID;
    
    @XmlElement(name = "name")    
    private String name;
     
    @XmlElement(name = "origin")    
    private String origin;
    
    @XmlElement(name = "destination")
    private String destination;
    
    @XmlElement(name = "deDate")
    private String deDate;
    
    @XmlElement(name = "reDate")
    private String reDate;
    
    @XmlElement(name = "price")
    private double price;
    
    @XmlElement(name = "seats")
    private int seats;
    
    @XmlElement(name = "type")
    private String type;

    public Flight() {
    }
    
    public Flight(String flightID, String name, String origin, String destination, String deDate, String reDate, double price, int seats, String type) {
        
        this.flightID = flightID;
        this.name = name;
        this.origin = origin;
        this.destination = destination;
        this.deDate = deDate;
        this.reDate = reDate;
        this.price = price;
        this.seats = seats;
        this.type = type;
    }
    
    public String getID() {
        return origin;
    }

    public void setID(String flightID) {
        this.flightID = flightID;
    }
    
    
    public String getName() {
        return origin;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }    
    
    public String getDeDate() {
        return deDate;
    }

    public void setDeDate(String deDate) {
        this.deDate = deDate;
    }
    
    public String getReDate() {
        return reDate;
    }

    public void setReDate(String reDate) {
        this.reDate = reDate;
    }    
    
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }    
    
    public int getSeat() {
        return seats;
    }

    public void setSeat(int seats) {
        this.seats = seats;
    }    
    
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }    
}