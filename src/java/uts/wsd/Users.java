/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import java.util.*;
import java.io.Serializable;
import javax.xml.bind.annotation.*;
 
@XmlAccessorType(XmlAccessType.FIELD)

@XmlRootElement(name = "users")
public class Users implements Serializable {
    
    @XmlElement(name = "user")
    private ArrayList<User> userList = new ArrayList<User>();
 
    public ArrayList<User> getList() {
        return userList;
    }
    public void addUser(User user) {
        userList.add(user);
    }
    public void removeUser(User user) {
        userList.remove(user);
    }
    
    public User getEmail(String email){
         for (User user : userList) {
            if (user.getEmail().equals(email)) {
                return user;
            }
        }
         return null;
    }
    
    public User login(String email, String password) {
        
        for (User user : userList) {
            if (user.getEmail().equals(email) && user.getPassword().equals(password))
                return user; 
        }
        return null; 
    }
    
    public Booking getBooking() {
        for (User user : userList) {
            return user.getBooking();
        }
        return null;
    }
    
    public Booking searchCustomerBooking(String email) {
        for (User user : userList) {
            if (user.getEmail().equals(email)) {
                return user.getBooking();
            }
            else {return null;}
        }
        return null;
    }
    
}