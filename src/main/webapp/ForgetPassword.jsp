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
.one{
margin-top:150px;
position:relative;
margin-left:500px;
border:1px solid black;
padding:10px;
width:280px;
 
}

body {
  background-image: url('web_3.jpg');
  background-repeat: no-repeat;
  background-size:cover;
}
    
  
</style>
</head>
<body>

<marquee><b>Update Your Pssword</b></marquee>

<div class="one">

  
    <p><b>Change your Password</b></p>
 <form action="Forget" method="post">
 <label>Enter your Email:</label><br>
 <input type="text" name="forget" id="forget"><br><br>
 <label>Enter your new password:</label><br>
 <input type="text" name="password" id="password"><br><br>
 <button type="submit" class="btn btn-primary">Forgot password</button>
 
  <button type="submit" class="btn btn-primary">Reset</button>
 
 </div>
 
  
 </form>
</body>
</html>