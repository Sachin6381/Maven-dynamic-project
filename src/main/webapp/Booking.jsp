<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.MovieTicketBookingDaoImpl.*" %>
    <%@page import=" java.util.List" %>
    <%@page import="com.MovieticketBookingModel.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
   

body {
  background-color:red;
  background-repeat: no-repeat;
  background-size:cover;
}
.one
{
textalign:center;
}
.five
{
position:relative;
margin-left:500px;
}
</style>  
</head>
<body> 

<%!int thid;
int movid;
%>
<%int mvid = Integer.parseInt(request.getParameter("movieid"));
TheatreDaoImpl thetreDao=new TheatreDaoImpl();
List<Theatreinformation> movieList=thetreDao.showtheatre(mvid);
%>
<div class="five">
<% int count=0;
for(Theatreinformation theatre: movieList){
	%> 
                    

              <div class="one">
                <marquee>Book Your Ticket</marquee>
   
            <span style="visibility:hidden "> Movie id :<input type="text" name="theatre" value="<%= theatre.getMovie_id() %>"><br><br></span>
            <span style="visibility:hidden ">  Theatre id:  <input type="text" name="movie" value="<%= theatre.getTheatre_id() %>"><br><br></span>
            <p> Theatre Details</p><br>
             Theatre name:  <input type="text" name="movie" value="<%= theatre.getTheatre_name()%>" readonly="readonly"><br><br>
             Available Seats :<input type="text" name="seat" value="<%= theatre.getNumber_seats ()%>" readonly="readonly"><br><br>
             <% thid = theatre.getTheatre_id() ;
             movid = theatre.getMovie_id();
             System.out.println(thid);
             System.out.println(movid);
%>
<%} %>
<form action="bookmov" method="post" >
                            <p>BooKing your Ticket<p>
       

        <label for ="Movie Id"> Movie Id:</label><br>
        <input type="number" name="Movie" id="Movie" value ="<%=movid%>" readonly="readonly" ><br><br>
        <label for ="Movie Theatre Id"> Theatre Id</label><br>
        <input type="number" name="theatre" id="theatre" value= "<%=thid %>" readonly="readonly"><br><br>
        <label for ="Number of seats">Choose number of seats</label><br>    
        <input type="Number" name="Seats" id="Seats" min=1><br><br>
        <label for ="Date">Date</label><br>    
        <input type="Date" name="Date" id="Date"><br><br>
        <button type="submit">Book Ticket</button>
        <button><a href ="Show.jsp">Cancel Booking</a></button>
        
        </div>
              
        
         
</form>
</div>
</body>
</html>