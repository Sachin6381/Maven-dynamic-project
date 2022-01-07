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
</style>
</head>
<body style="background-color:red;">
</body>
<body>
<ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="#news">News</a></li>
  <li><a href="Login1.jsp">logout</a></li>
  
  <li><a href="AddTheatre.jsp">AddTheatre</a></li>
 
</ul>
 </style>
</head>
<body>

   
 
 
   
    <h1>Add Theatre<h1><br><br>
    
    <form action="Addtheatre" method="post">
    <label>Enter your Theatre Name:</label>
    <input type="text" name="theatrename"><br><br>
    <label>Enter your movie Id:</label> 
     <input type="text" name="movieid"><br><br>
    <label>Enter your Theatre Id:</label> 
    <input type="text" name="theatre Id"><br><br>
    <label>Enter your Number Seats:</label> 
    <input type="text" name="Numberseats"><br><br>
    <label>Enter your Theatre Address:</label> 
    <input type="text" name="theatre Address"><br><br>
    <label>Enter your Theatre Ratings:</label> 
    <input type="text" name="theatre Ratings"><br><br>
    <label>Enter your Movie date and time:</label> 
    <input type="datetime-local" name=" Movie date and time"><br><br>
    <label>Enter your Price:</label> 
    <input type="text" name="Price"><br><br>
     <button type="submit">Add Theatre</button><br>
     
   </form>
    <h2>Update Theatre</h2>

     <form action="Updatetheatre" method="post">
    <label>Enter your Theatre Name:</label>
    <input type="text" name="theatrename"><br><br>
    <label>Enter your movie Id:</label> 
     <input type="text" name="movieid"><br><br>
    <label>Enter your Theatre Id:</label> 
    <input type="text" name="theatre Id"><br><br>
    <label>Enter your Number Seats:</label> 
    <input type="text" name="Numberseats"><br><br>
    <label>Enter your Theatre Address:</label> 
    <input type="text" name="theatre Address"><br><br>
    <label>Enter your Theatre Ratings:</label> 
    <input type="text" name="theatre Ratings"><br><br>
    <label>Enter your Movie date and time:</label> 
    <input type="datetime-local" name=" Movie date and time"><br><br>
    <label>Enter your Price:</label> 
    <input type="text" name="Price"><br><br>
     <button type="submit">Update Theatre</button><br>
    
    </form>
    
    <h3>Delete Theatre</h3>
    
    <form action="Deletetheatre" method="post">
    <label>Enter your Theatre Id:</label> 
    <input type="text" name="theatre Id"><br><br>
    <button type="submit">DeleteTheatre</button>
    
</body>
</html>