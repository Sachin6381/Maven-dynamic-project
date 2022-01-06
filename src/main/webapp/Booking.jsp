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
  background-image: url('https://images.pexels.com/photos/132197/pexels-photo-132197.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500');
  background-repeat: no-repeat;
  background-size:cover;
}
</style>   
<%!int thid;
int movid;
%>
<%int mvid = Integer.parseInt(request.getParameter("movieid"));
TheatreDaoImpl thetreDao=new TheatreDaoImpl();
List<Theatreinformation> movieList=thetreDao.showtheatre(mvid);
%>

<% int count=0;
for(Theatreinformation theatre: movieList){
	%> 



   
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
        <label for ="Number of seats">Number of seats</label><br>    
        <input type="Number" name="Seats" id="Seats"><br><br>
        <button type="submit">book</button>
        
        
              
        
         
</form>

</body>
</html>