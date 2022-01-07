<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.one
{
position:relative;
margin-left:600px;
}

body {
  background-color:red;
  background-repeat: no-repeat;
  background-size:cover;
}

</style>




</head>
<body>

  <div class="one">
      <h1>Booking Success</h1>
      <table>
      <tr>
      <td>
      <p>Booking Details</p>
      <%int userid=Integer.parseInt(session.getAttribute("userid").toString()); %>
      User Id: <%=userid %><br>
     <%int movieid= Integer.parseInt(session.getAttribute("movieid").toString()); %>
      Movie Id : <%=movieid %><br>
     <% int theatreid=Integer.parseInt(session.getAttribute("theaterid").toString()); %>
       Theatre Id : <%=theatreid %><br>
      <%int seatsno=Integer.parseInt(session.getAttribute("Seats").toString()); %>
       Number of Seats  : <%=seatsno %><br>
      <%int price=Integer.parseInt(session.getAttribute("totalprice").toString()); %>
      Total Price : <%=price %><br>
    
    <button><a href="Show.jsp">Home</a></button>  
      </table>
      </tr>
      </td>
      </div>
</body>
</html>