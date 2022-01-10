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
<body style="background-color:red;">
</body>
<body>
<ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="News.jsp">News</a></li>
  <li><a href="Show.jsp">ShowMovie</a>
  <li><a href="AddTheatre.jsp">AddTheatre</a></li>
  <li><a href="UserdetailHistory.jsp">UserList</a>
  <li><a href="BookingHistory.jsp">BookingList</a>
  <li><a href="Login1.jsp">logout</a></li>
    
  
 
</ul>
</style>
</head>
<body>

    

    <br>
    <div class ="ones1">
    <h1>Add New Movies</h1>
    <form action="Addmovie" method="post">
    <label>Enter your movie name:</label><br>
    <input type="text" name="movie name"><br><br>
    <label>Enter your movie id:</label><br>
    <input type="text" name="Move id"><br><br>
     <label>Enter your movie type:</label><br>
    <input type="text" name="Move type"><br><br>
     <label>Enter your movie ratings:</label><br>
    <input type="text" name="Move ratings"><br><br>
    <label>Enter your movie duration:</label><br>
    <input type="text" name="Move duration"><br><br>
    <label>Enter your Director:</label><br>
    <input type="text" name="Director"><br><br>
    <label>Enter your music director:</label><br>
    <input type="text" name="Music director"><br><br>
    <label>Enter your Hero name:</label><br>
    <input type="text" name="Hero name"><br><br>
    <button type="submit">Add movie</button>
    
    </form>
    </div>
   
   <div class="one">
   <h2>Update Movies</h2>
   
    <form action="updateMovie" method="post">
    <label>Enter your movie name:</label><br>
    <input type="text" name="movie name"><br><br>
     <label>Enter your movie type:</label><br>
    <input type="text" name="Move type"><br><br>
    <label>Enter your movie duration:</label><br>
     <input type="text" name="Move duration"><br><br>
    <label>Enter your movie id:</label><br>
    <input type="text" name="Move id"><br><br>
   
    
    <button type="submit">Update movie</button>
      </div>
    </form>
  
    <div class="ones">
    <h3>Delete Movies</h3>
    
    <form action="DeleteMovie1"  method="post">
    <label>Enter your movie id:</label><br>
    <input type="text" name="Move id"><br><br>
    <button type="submit">Delete movie</button>
    </div>
    </form>
    
</body>
</html>