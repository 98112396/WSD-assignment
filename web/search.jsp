<%@page import="uts.wsd.*" contentType="text/html" pageEncoding="UTF-8"%>            
            <%
                User user = (User)session.getAttribute("user");
                
                String filePath = application.getRealPath("WEB-INF/flights.xml"); 
                FlightApplication flightApp = new FlightApplication();
                flightApp.setFilePath(filePath);
                
                String firstCity = request.getParameter("firstCity");
                String secondCity = request.getParameter("secondCity");
                String types = request.getParameter("types");
                String dDate = request.getParameter("dDate");
                String rDate = request.getParameter("rDate");
                
                Flights flights = flightApp.getFlights();
                flights.searchFlights(firstCity, secondCity);
                
                int search = flights.getSearchList().size();
              
              if(search > 0)
              {    
              %>
               <table>
                  <tr>
                      <th>Origin</th>
                      <th>Destination</th>
                      <th>Type</th>
                      <th>Departure Date</th>
                      <th>Return Date</th>
                      <th>Price</th>
                      <th>Available seats</th>
              <%
                  if(user != null)
                  {
              %>
                      <th>Booking</th>
              <%
                  }
              %>
                  </tr>  
              <%
              for(int i = 0; i < flights.getSearchList().size(); i++)
              {
                  String fCity = flights.getSearchList().get(i).getOrigin();
                  String sCity = flights.getSearchList().get(i).getDestination();
                  String type = flights.getSearchList().get(i).getType();
                  String deDate = flights.getSearchList().get(i).getDeDate();
                  String reDate = flights.getSearchList().get(i).getReDate();
                  double price = flights.getSearchList().get(i).getPrice();
                  int seat = flights.getSearchList().get(i).getSeat();
              %>
                <tr>
                      <td><%=fCity%></td>
                      <td><%=sCity%></td>
                      <td><%=type%></td>
                      <td><%=deDate%></td>
                      <td><%=reDate%></td>
                      <td><%=price%></td>
                      <td><%=seat%></td>
                  <%
                  if(user != null)
                  {
              %>
                      <td><a href="booking.jsp">Book</a></td>
              <%
                  }
              %>
                  </tr>
              <%
              }
                %>
            </table>
            <%
              }
              else{
             %>
            <p>Sorry! result is not found</p>
            <%
                }
            %>