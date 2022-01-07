<%@page import="com.MovieticketBookingModel.*"%>
<%@page import="com.MovieTicketBookingDaoImpl.*"%>


<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie Booking</title>
<style>
img{
width: 280px;
padding:20px;
}
span{
position : relative;
top:240px;
left: -200px;

}
.name{
position: relative;left:200px;
}
.movie
{
  position:relative;
  left:100px;
  color:white;
}
#thimg
{
  position:relative;
  left:200px;
}
</style>
</head>
<body style="background-color:red;">
</body>
<body>


<%!
TheatreDaoImpl theatreDaoImpl = new TheatreDaoImpl();
List<Theatreinformation> showtheatre;
%>
<%
int id = (int)session.getAttribute("movieid");


showtheatre = theatreDaoImpl.showtheatre(id);
%>

<table>
<tbody>
                                 <tr>
                                 <h1><b>Movie Theatre</b></h1>
                                 <%int count=0;
                                   for(Theatreinformation theatreinformation: showtheatre){
                           	%>
                                   <td>
                                   <table id="theatretable">
                                   <tbody>
                                   <tr>
                                   
                                     <td><img src=<%=theatreinformation.getImages()%> alt="sachin" id="thimg"></td>    
                                     <td class="movie">
                                         
                                        <span>Theatre name: <%=theatreinformation.getTheatre_name() %> </span><br>
                                        <span style="visibility:hidden"> Movie id:<%=theatreinformation.getMovie_id() %>  </span>
                                        <% System.out.println(theatreinformation.getTheatre_id());%>
                                        <span style="visibility:hidden"> Theatre id: <%=theatreinformation.getTheatre_id()%> </span><br>
                                        <span>Number seats:<%=theatreinformation.getNumber_seats() %> </span><br>
                                        <span>Theatre Address:<%=theatreinformation.getTheatre_address() %></span><br>
                                        <span>Theatre Ratings:<%=theatreinformation.getTheatre_rating() %></span><br>
                                        <span>price:<%=theatreinformation.getPrice() %></span><br>
                                        <span>Movie date and Time:<%=theatreinformation.getMovie_date_time() %></span><br><br>
                                         
                                        
                                        <% session.setAttribute("movieid", theatreinformation.getMovie_id());%>
                                          
                                     <% session.setAttribute("theaterid", theatreinformation.getTheatre_id()); %>
                                     <span><a href="Booking.jsp?movieid=<%=theatreinformation.getMovie_id()%>&theatreid=<%=theatreinformation.getTheatre_id()%>"><button>Book Ticket</button></a></span>
                                        
                                     
                                   </td>
                                   </tr>
                                   </tbody>
                                   </table>  
                            
                                  </td>
                                  <% count ++;
                                  if(count==3){ %> 
                    	          </tr>
                    	          <tr>              
                                  <%count=0; }}%>  
                       
                                  </tr>
                                  </tbody>
                                  </table>
</div>

</body>
</html>