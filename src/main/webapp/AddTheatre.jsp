<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
  border-right:1px solid #bbb;
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
  background-color: #04AA6D;
}
.ones1{
  position:absolute;
  top:80px;
  left:50px;
  text-decoration:none;
  color:white;
}
.one{
  position:absolute;
  top:80px;
  left:600px;
  text-decoration:none;
  color:white;
}
.ones{
  position:absolute;
  top:80px;
  left:1100px;
  text-decoration:none;
  color:white;
}

 body {
  background-image: url('Rohini Sliver Screen.jpg');
  background-repeat: no-repeat;
  background-size:cover;
}


</style>
</head>

</body>
<body>
<ul>
  <li><a class="active" href="home">Home</a></li>
  <li><a href="News.jsp">News</a></li>
  <li><a href="Show.jsp">ShowMovie</a>
  <li><a href="UserdetailHistory.jsp">UserList</a>
  <li><a href="BookingHistory.jsp">BookingList</a>
  <li><a href="AddTheatre.jsp">AddTheatre</a></li>
    <li><a href="Login1.jsp">logout</a></li>
 
</ul>

 
</head>

<body>
     <div class="ones1">
    <h1>Add Theatre</h1>
    
    <form action="Addtheatre" method="post">
    <label>Enter your Theatre Name:</label><br>
    <input type="text" name="theatrename"><br><br>
    <label>Enter your movie Id:</label> <br>
     <input type="text" name="movieid"><br><br>
 
    <label>Enter your Number Seats:</label> <br>
    <input type="text" name="Numberseats"><br><br>
    <label>Enter your Theatre Address:</label> <br>
    <input type="text" name="theatre Address"><br><br>
    <label>Enter your Theatre Ratings:</label> <br>
    <input type="text" name="theatre Ratings"><br><br>
    <label>Enter your Movie date and time:</label> <br>
    <input type="datetime-local" name=" Movie date and time"><br><br>
    <label>Enter your Price:</label> <br>
    <input type="Number" name="Price"><br><br>
    <label>Enter your Image:</label><br>
    <input type="file" name="images"><br><br>
     <button type="submit">Add Theatre</button><br>
     
     
   </form>
   </div>
   
   
   <div class="one">
   
    <h2>Update Theatre</h2>

     <form action="Updatetheatre1" method="post">
    <label>Enter your Theatre Name:</label><br>
    <input type="text" name="theatrename"><br><br>
    <label>Enter your Price:</label> <br>
    <input type="Number" name="Price"><br><br>
     <label>Enter your Theatre Id:</label> <br>
    <input type="text" name="theatre Id"><br><br>
     <button type="submit">Update Theatre</button><br>
    
    </form>
    </div>
    
    
    <div class="ones">
    <h3>Delete Theatre</h3>
    
    <form action="Deletetheatre4" method="post">
    <label>Enter your Theatre Id:</label> <br>
    <input type="text" name="theatre Id"><br><br>
    <button type="submit">DeleteTheatre</button>
    </form>
    </div>
    
    
</body>
</html>