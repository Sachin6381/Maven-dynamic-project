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
</head>
<body>
      <%
      
      List<Movie> searchList =(List<Movie>) session.getAttribute("moviename");
      %>
      
      <table border="2" id="alljobs">
<h1><b>Search By Movie List:</b></h1>
<thead>
<tr>
<th>S.No</th>
  <th >Movie Name</th>
<th>Movie Type</th>
<th>Duration</th>
<th>Direcrtor</th>
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
<td><%=i%></td>
<td><%=list.getMovie_name()%></td>
<td><%=list.getMovie_type()%></td>
<td> <%=list.getMovie_duration()%></td>
<td> <%=list.getDirector()%></td>
<td> <a href="TheatreMovie1.jsp">Book</a></td>


</tr>

<%
}

%>
      </tbody>
          </table>
      
      
</body>
</html>