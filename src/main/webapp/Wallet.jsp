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


<style >
.one
{
position:relative;
margin-left:510px;
margin-top:90px;
top:60px;
border:3px solid black;
padding:10px;
width:280px;
background:FAEBD7;  
}

.ones{
  position:absolute;
  top:50px;
  left:1250px;
  text-decoration:none;
  color:white

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
     <h1>Wallet Update</h1>
     <form  action="Wallet" method="post">
     
     Enter your Amount:<br>
     <input type="number" name="amount" id="number" min=1><br><br>
     Enter your Email id:<br>
     <input type="email" name="email" id="email"><br><br>
     
     <button type="submit"  class="btn btn-primary">Wallet Recharge</button><br><br>
      Note:Wallet Amount Check Your Profile
        
        </div>
        
         
                     <div class="ones">

                      <button><a href="Show.jsp"  class="btn btn-primary">Back</a></button>  

                      </div>
        
        
     </form>
</body>
</html>