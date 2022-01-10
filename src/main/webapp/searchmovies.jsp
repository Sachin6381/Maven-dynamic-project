<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@page import="com.MovieticketBookingModel.Movie"%>
<%@page import="com.MovieTicketBookingDaoImpl.MovieDaoImpl"%>
        
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >
.one
{
position:relative;
margin-left:400px;
}

 body {
  background-image: url('web_3.jpg');
  background-repeat: no-repeat;
  background-size:cover;
}

</style>

</head>
<body>

<div class="one">
      <%
      
      List<Movie> searchList =(List<Movie>) session.getAttribute("moviename");
      %>
      
      <table border="2" id="alljobs">
     <h1><b>Search By Movie List:</b></h1>
<thead>
<tr>
<th>movie photos</th>
<th >Movie Name</th>
<th>Movie id</th>
<th>Movie Type</th>
<th>Duration</th>
<th>Director</th>
<th>music Director</th>
<th>Hero Name</th>
<th>Book tickets</th>
</tr>
</thead>
<br>
<br>
      <tbody>
<%

for (Movie list : searchList) {
int i=0;
i++;

System.out.println(list);
%>
<tr>
<td><img src="<%=list.getHero_name()%>.jpg" width=100px alt="img"></td>

<td><%=list.getMovie_name()%></td>

<td><%=list.getMovie_id() %></td>
<td><%=list.getMovie_type()%></td>
<td> <%=list.getMovie_duration()%></td>
<td> <%=list.getDirector()%></td>
<td> <%=list.getMusic_director() %></td>
<td> <%=list.getHero_name() %></td>


<td> <a href="TheatreMovie1.jsp">Book</a></td>


</tr>

<%
}

%>
      </tbody>
      </table>
      
   </div>   
</body>
</html>