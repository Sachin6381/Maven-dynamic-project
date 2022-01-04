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
</head>
<body> 
<style>
body {
  background-image: url('https://inc42.com/wp-content/uploads/2019/04/movie-ticketing.jpg');
  background-repeat: no-repeat;
  background-size:cover;
}
</style>   
<%int mvid = Integer.parseInt(request.getParameter("movieid"));

TheatreDaoImpl thetreDao=new TheatreDaoImpl();
List<Theatreinformation> movieList=thetreDao.showtheatre(mvid);


%>

<% int count=0;
for(Theatreinformation theatre: movieList){
	%> 



    <p>  Theatre Details Follow Below Booking Details</p><br>
   Movie id :<input type="text" name="theatre" value="<%= theatre.getMovie_id() %>"><br><br>
   Theatre id:  <input type="text" name="movie" value="<%= theatre.getTheatre_id() %>"><br><br>
   Theatre name:  <input type="text" name="movie" value="<%= theatre.getTheatre_name() %>"><br><br>
   Available Seats :<input type="text" name="seat" value="<%= theatre.getNumber_seats ()%>"><br><br>

<%} %>
<form action="bookmov" method="post" >
            <p>BooKing Ticket<p>
         
        <label for ="Movie Id"> Movie Id</label><br>
        <input type="Movie Id" name="Movie" id="Movie"><br><br>
        <label for ="Movie Theatre Id"> Theatre Id</label><br>
        <input type="Movie Theatre Id" name="theatre" id="theatre"><br><br>
        <label for ="Number of seats">Number of seats</label><br>    
        <input type="Number" name="Seats" id="Seats"><br><br>
        <button type="submit">book</button>
        
        
               
        
         
</form>

</body>
</html>