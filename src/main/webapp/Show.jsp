<%@page import="java.sql.ResultSet"%>
<%@page import="com.MovieticketBookingModel.Movie"%>
<%@page import="com.MovieTicketBookingDaoImpl.MovieDaoImpl"%>


<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>


<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>

body{
	font-weight: bold;
}
img{
width: 320px;
padding:20px;
}
span{
position : relative;
top:240px;
left: -200px;

}
.movieid
{
visibility:hidden;
}
.searchbtn
{
  position:absolute;
  top:15px;
  left:650px;
  text-decoration:none;
  color:white;
}
.log
{
  position:absolute;
  top:1px;
  left:1200px;
  text-decoration:none;
  color:white;
}
.contact{

  position:absolute;
  top:1px;
  left:1000px;
  text-decoration:none;
  color:white;

}
.contact1{

  position:absolute;
  top:1px;
  left:1100px;
  text-decoration:none;
  color:white;

}

h1{
color:white;
}


.movie
{
   position:relative;
  left:8px;
  color:white;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
 
}

li:last-child {
  border-right: none;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {

  font-size:x-large;
}

 body {
  background-image: url('Rohini Sliver Screen.jpg');
  background-repeat: no-repeat;
  background-size:cover;
}
.border{
	border: 1px solid black;
	position: relative;
	top: 200px;
}

</style>

</head>
</body>
<body>
<ul>


     <div class="top">
   <li><a class="active" href="Show.jsp">Home</a></li>
   <li><a href="News.jsp">News</a></li>
   <li><a href="UserProfile.jsp">Profile</a></li>
   <li><a href="Wallet.jsp">Recharge Wallet</a></li>
    <li><a href="MyBooking.jsp">My Bookings</a></li>
   </div>
   
   <div class="log">
   
   <li><a href="Login1.jsp">Logout</a></li>
   </div>
   
   <div class="contact">
   
    <li><a href="About Us.jsp">About Us</a></li>
   </div>
   
     <div class="contact1">
   
    <li><a href="Contact Us.jsp">Contact Us</a></li>
   </div>
   
  
    
</ul>
<%!
MovieDaoImpl movieDaoImpl = new MovieDaoImpl();
List<Movie> showmovie;
%>
<%
showmovie = movieDaoImpl.showMovie();

%>
                                        <table>
                                        <tbody>
                                        <tr>
                                        <h1></b>Movie List</h1><b>
                                        <%int count=0;
                                        for(Movie movie: showmovie){
                                      	%>
                                         <td>
                                        <table id="movietable">
                                        <tbody>
                                         <tr>
                                        <td><img src=<%=movie.getImages()%> alt="sachin"></td>    
                                        <td class="movie">
                                        
                                        <span id="movie name">Movie name: <%=movie.getMovie_name() %> </span><br>
                                       
                                        <span  style="visibility:hidden"> Movie id:<label id = "movieid"> <%=movie.getMovie_id() %></label> </span><br>
                                        <span>Movie type: <%=movie.getMovie_type()%> </span><br>
                                        <span>Movie ratings:<%=movie.getMovie_ratings() %> </span><br>
                                        <span>Movie duration:<%=movie.getMovie_duration() %></span><br>
                                         <span>Movie director:<%=movie.getDirector() %></span><br>
                                         <span>Music director:<%=movie.getMusic_director() %></span><br>
                                         <span>Hero name:<%=movie.getHero_name() %></span><br>
                                        <span> <form action = "Moviedetails?movietoday=<%=movie.getMovie_name() %>">
                                        <input type = "text" value = <%=movie.getMovielink()%> name = "movlink" class="movieid">
                                        <button type = "submit" class="btn btn-primary" value="Theatre">Theatre</button></span></div>
                                      
                                         </form>
                                         </div>
                                       
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
                                   
                                   <a href="SearchMovie.jsp" class="searchbtn" class="glyphicon glyphicon-search"> Search Movie</a>
</body>
</html>