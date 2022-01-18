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

    body  
{  
    margin:.150px;  
    padding:0;  
    background-color:#6abadeba;  
    font-family:'Arial';  
}  
.login{  
        
        width:350px;  
        overflow:hidden;  
        margin:auto;  
        margin:20 0 0 450px;  
        padding:30px;  
        background:#23463f;  
        border-radius:15px ;  
          
}  
h1{  
    text-align:center;  
    color:#277582;  
    padding:20px;  
}  
label{  
    color:#08ffd1;  
    font-size:17px;  
}  
#Email{  
    width:250px;  
    height:30px;  
    border:none;  
    border-radius:3px;  
    padding-left:8px;  
}  
#Pass{  
    width:250px;  
    height:30px;  
    border:none;  
    border-radius:3px;  
    padding-left:8px;  
      
}  
.Sign{  
    width:250px;  
    height:30px;  
    border:none;  
    border-radius:17px;  
    padding-left:3px;  
    color:blue;  
  
  
}  
a{  
    float: right;  
    background-color: grey;  
    padding-left: 10px;
}  

 body {
  background-image: url('web_4.jpg');
  background-repeat: no-repeat;
  background-size:cover;
}

</style>
</head>
<body>
    
    
      <h1>Login page</h1> 
      <form action="login1" method="get">
 
      <div class="login"> 
       
          <label for ="Email">Email Id</label><br>    
          <input type="email" name="Email" id="Email" placeholder="Email-Id" required><br><br>  

          <label for="Password">Password</label><br>    
          <input type="password" name="Pass" id="Pass" placeholder="Password" required><br><br> 

          <button type="submit"  class="btn btn-primary" >Submit</button>
       
          <a href="ForgetPassword.jsp" class="btn btn-primary" >Forgot password</button><br>
          
          
          
          
          
          </div>
          
          
     
          
       </form> 
</body>
</html>