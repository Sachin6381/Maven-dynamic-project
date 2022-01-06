<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
      <p>BookingSuccess</p>
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
      Seats no : <%=seatsno %><br>
      <%int price=Integer.parseInt(session.getAttribute("totalprice").toString()); %>
      Price : <%=price %>
      </table>
      </tr>
      </td>
</body>
</html>