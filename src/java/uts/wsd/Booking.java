/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import java.io.*;        
import java.util.ArrayList;
import javax.xml.bind.annotation.*;

/**
 *
 * @author mtcho
 */

@XmlAccessorType(XmlAccessType.FIELD)
public class Booking implements Serializable{
    
    @XmlElement(name = "bookingID")
    private String bookingID;
    
    @XmlElement(name = "user")
    private ArrayList<User> list = new ArrayList<User>();
    
    @XmlElement(name = "flight")
    private Flight flight;

    public Booking(String bookingID, Flight flight) {
        this.bookingID = bookingID;
        this.flight = flight;
    }

    public String getBookingID() {
        return bookingID;
    }

    public Flight getFlight() {
        return flight;
    }

    public void setBookingID(String bookingID) {
        this.bookingID = bookingID;
    }

    public void setFlight(Flight flight) {
        this.flight = flight;
    }
    
    public void addUser(User user) {
        list.add(user);
    }
    
    public void removeUser(User user) {
        list.remove(user);
    }
    
}
