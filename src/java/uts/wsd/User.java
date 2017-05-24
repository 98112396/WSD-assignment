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
 * @author 11661143
 */

@XmlAccessorType(XmlAccessType.FIELD)
public class User implements Serializable{
    
    @XmlElement(name = "id")
    private int id;
    @XmlElement(name = "name")
    private String name;
    @XmlElement(name = "email")    
    private String email;
    @XmlElement(name = "password")
    private String password;
    @XmlElement(name = "dob")
    private String dob;
    @XmlElement(name = "type")
    private String type; 
    @XmlElement(name = "booking")
    private ArrayList<Booking> bookingList;
    
    public User() {
    }
    
    public User(int id, String name, String email,String password, String dob, String type) {
        this.bookingList = new ArrayList<Booking>();
        this.id = id;
        this.email = email;
        this.name = name;
        this.password = password;
        this.dob = dob;
        this.type = type;
    }
    
    public void setID(int id) {
        this.id = id;
    }
    
    public int getID() {
        return id;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getName() {
        return name;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getEmail() {
        return email;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getPassword() {
        return password;
    }
    
    public void setDob(String dob){
        this.dob = dob;
    }
    
    public String getBod(){
        return dob;
    }
    
    public void setType(String type) {
        this.type = type;
    }
    
    public String getType() {
        return type;
    }
    
    public ArrayList<Booking> getList() {
        return bookingList;
    }

    public void addBooking(Booking booking) {
        bookingList.add(booking);
    }

    public void removeBooking (Booking booking){
        bookingList.remove(booking);
    }
    
    public Booking getBooking(){
        
        for(Booking booking : bookingList)
        {
            return booking;
        }
        return null;
    }
}


