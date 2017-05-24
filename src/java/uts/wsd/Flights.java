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

@XmlRootElement(name = "flights")
public class Flights implements Serializable {
    
    @XmlElement(name = "flight")
    private ArrayList<Flight> list = new ArrayList<Flight>();
    
    private ArrayList<Flight> matchFlight = new ArrayList<Flight>();
 
    public ArrayList<Flight> getList() {
        return list;
    }
    
    public ArrayList<Flight> getSearchList(){
        return matchFlight;
    }
    
    public void addFlight(Flight flight) {
        list.add(flight);
    }
    public void removeFlight(Flight flight) {
        list.remove(flight);
    }
 
    public Flight searchFlight(String origin, String destination, String deDate, String reDate, String type){
        
        //ArrayList<Flight> matching = new ArrayList<Flight>();        
        for(Flight flight : list)
        {
            if(flight.getOrigin().equals(origin) && flight.getDestination().equals(destination) && 
              flight.getDeDate().equals(deDate) && flight.getReDate().equals(reDate) && flight.getType().equals(type))
            {
                matchFlight.add(flight);
            }
        }
        return null;
    }
    
    public void searchFlights(String origin, String destination){
        
        //ArrayList<Flight> matching = new ArrayList<Flight>();        
        for(Flight flight : list)
        {
            if(flight.getOrigin().equals(origin) && flight.getDestination().equals(destination))
            {
                matchFlight.add(flight);
            }
        }
    }


}