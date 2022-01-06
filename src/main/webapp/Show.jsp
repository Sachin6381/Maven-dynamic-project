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
.movieid
{
visibility:hidden;
}
.searchbtn
{
  position:absolute;
  top:15px;
  left:1250px;
  text-decoration:none;
  color:white;
}
.movie
{
  color:white;
  position:relative;
  right:80px;
}
</style>
</head>
<body style="background-color:red;">
</body>
<body>
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
                                        <p></b>Movie List</p><b>
                                        <%int count=0;
                                        for(Movie movie: showmovie){
                                      	%>
                                         <td>
                                        <table id="movietable">
                                        <tbody>
                                         <tr>
                                        <td><img src=<%=movie.getImages()%> alt="sachin"></td>    
                                        <td class="movie">
                                        <span>Movie name: <%=movie.getMovie_name() %> </span><br>
                                        <span  style="visibility:hidden"> Movie id:<label id = "movieid"> <%=movie.getMovie_id() %></label> </span><br>
                                        <span>Movie type: <%=movie.getMovie_type()%> </span><br>
                                        <span>Movie ratings:<%=movie.getMovie_ratings() %> </span><br>
                                        <span>Movie duration:<%=movie.getMovie_duration() %></span><br>
                                         <span>Movie director:<%=movie.getDirector() %></span><br>
                                         <span>Music director:<%=movie.getMusic_director() %></span><br>
                                         <span>Hero name:<%=movie.getHero_name() %></span><br>
                                        <span> <form action = "Moviedetails">
                                        <input type = "text" value = <%=movie.getMovielink()%> name = "movlink" class="movieid">
                                        <input type = "submit" value="theatre"></span>
                                         </form>
                                       
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
                                   
                                   <a href="SearchMovie.jsp" class="searchbtn">SERACH</a>
</body>
</html>