<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="com.MovieTicketBookingDaoImpl.*" %>
    <%@ page import="java.util.*" %>
    <%@ page import="com.MovieticketBookingModel.Bookingdetail" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <% BookingDaoImpl dao= new BookingDaoImpl();
  List<Bookingdetail> showBooking;
	showBooking=dao.showBooking();
	%>
	
	
          <h2 class="Bookingdetail">Booking Detail</h2>
          
        
        <div class="Booking list">
        <table border=1 >
            <tbody>
                <tr>
                <%int count=0;
                for(Bookingdetail bookingdetail: showBooking){
                	%>
                    <td>
                        <table id="booking">
                            <tbody>
                                <tr>
                                     
                                    <td class="viewall">
                                        <span>Booking Id: <%=bookingdetail.getBooking_id()%> </span><br>
                                        <span>Theatre Id : <%=bookingdetail.getTheatre_id()%>  </span><br>
                                        <span>User Id: <%=bookingdetail.getUser_id()%> </span><br>
                                        <span>Booked seats : <%=bookingdetail.getNo_seat()%> </span><br>
                                         <span>Total Amount : <%=bookingdetail.getTotal_amount()%> </span><br>
                                        <span>Status: <%=bookingdetail.getBooking_status()%></span><br>
                                         <span>Movie Name: <%=bookingdetail.getMovie_name()%></span><br>  
                                       
                                       </td>
                                </tr>
                            </tbody>
                        </table>  
                            
                    </td>
                       <% count ++;
                       if(count==7){ %> 
                    	   </tr>
                    	   <tr>              
                     <%count=0; }}%>  
                       
                </tr>
            </tbody>
        </table>
         
        </div>
    </div>
   </div>
</body>
</html>