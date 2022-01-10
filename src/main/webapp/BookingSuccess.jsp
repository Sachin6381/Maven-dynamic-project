<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*"%>
<%@page import="com.MovieticketBookingModel.Movie"%>
<%@page import="com.MovieTicketBookingDaoImpl.MovieDaoImpl"%>
<%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.one
{
Top:70px;
position:relative;
margin-left:550px;
}

 body {
  background-image: url('web_5.jpg');
  background-repeat: no-repeat;
  background-size:cover;
}



</style>





</head>
<body>

<%String bookedmovie=(String)session.getAttribute("moviefortoday"); 
ResultSet rs=(ResultSet)session.getAttribute("ResultSet");
Date bookingdate=(Date) (session.getAttribute("bookingdate"));

%>

  <div class="one">
     
      <table>
      <%while(rs.next()){ %>
      <tr>
      <td>




      
      <h1>Booking Details</h1>
      <%int userid=Integer.parseInt(session.getAttribute("userid").toString()); %>
      User Id: <%=userid %><br>
<!---  <%int movieid= Integer.parseInt(session.getAttribute("movieid").toString()); %>


      Movie Id : <%=movieid %><br>  ------>
      
      Booking Id :<%=rs.getInt(1) %><br>
  <!----    Movie Id : <%=movieid %><br>   ---->
      <%String movie_name=bookedmovie; %>


      Movie name:<%=movie_name %><br>
     <% int theatreid=Integer.parseInt(session.getAttribute("theaterid").toString()); %>
       Theatre Id : <%=theatreid %><br>
      <%int seatsno=Integer.parseInt(session.getAttribute("Seats").toString()); %>
       Number of Seats  : <%=rs.getInt(4) %><br>
       <%String date=session.getAttribute("moviedate").toString(); %>
       Movie date  : <%=date %><br>
      <%int price=Integer.parseInt(session.getAttribute("totalprice").toString()); %>
      Total Price : <%=price %><br>
       Booking date :<%=rs.getDate(8) %><br><br><br>
    
    <button><a href="Show.jsp">Home</a></button>  




      </td>
</tr>
<%} %>
      </table>
      
      </div>
      
</body>
</html>