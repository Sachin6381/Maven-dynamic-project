<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>
        body  
    {  
        margin: 100px;  
        padding: 0;  
        background-color:#6abadeba;  
        font-family: 'Arial';  
    }  
    .login{  
            
            width: 350px;  
            overflow: hidden;  
            margin: auto;  
            margin: 20 0 0 450px;  
            padding: 30px;  
            background: #23463f;  
            border-radius: 15px ;  
              
    }  
    h1{  
        text-align: center;  
        color: blue;  
        padding: 20px;  
    }  
    label{  
        color: #08ffd1;  
        font-size: 17px;  
    }
   
    input{
        width: 250px;  
        height: 30px;  
        border: none;  
        border-radius: 3px;  
        padding-left: 8px;  
    }
      label {
       color:black;
    }
    #fe{
        position: relative;
        right: 20px;
    }

    #ot{
        position: relative;
        right: 5px;
    }
 
 
    </style>
    <p>Admin Add theatre<p><br><br>
    
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
     <button type="submit">Add Theatre</button>
     
   </form>


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
     <button type="submit">Update Theatre</button>
    
    </form>
    
    <form action="Deletetheatre" method="post">
    <label>Enter your Theatre Id:</label> 
    <input type="text" name="theatre Id"><br><br>
    <button type="submit">DeleteTheatre</button>
    
</body>
</html>