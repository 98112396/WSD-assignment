/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import java.io.*;
import javax.xml.bind.*;

/**
 *
 * @author 11661143
 */
public class FlightApplication implements Serializable{
    
    private String filePath;
    private Flights flights;
    
    public FlightApplication(){}
    
    public FlightApplication(String filePath, Flights flights)
    {
        super();
        this.filePath = filePath;
        this.flights = flights;
    }
    
    /*
     * @return the filePath
     */
    public String getFilePath() {
        return filePath;
    }

    /**
     * @param filePath the filePath to set
     */
    public void setFilePath(String filePath) throws Exception {
        
        JAXBContext jc = JAXBContext.newInstance(Flights.class);
        Unmarshaller u = jc.createUnmarshaller();

        this.filePath = filePath;
        
        // Now unmarshal the object from the file
        FileInputStream fin = new FileInputStream(filePath);
        flights = (Flights) u.unmarshal(fin); 		
        fin.close();

    }
    
    public void updateXML(Flights flights, String filePath) throws Exception {
        this.flights = flights;
        this.filePath = filePath;
        
        JAXBContext jc = JAXBContext.newInstance(Flights.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(flights, fout);
        fout.close();
    }

    /**
     * @return the users
     */
    public Flights getFlights() {
        return flights;
    }

    /**
     * @param users the users to set
     */
    public void setFlights(Flights flights) {
        this.flights = flights;
    }
    
}
