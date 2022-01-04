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
        color: #277582;  
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
    
    <div class="dropdown-content">
    <a href="#">Add movie</a>
    <a href="#">Update movie</a> 
    <a href="#">Delete movie</a>   
    </div>
    </div>
    
    </div>
    <br>
    
    <form action="Addmovie" method="post">
    <label>Enter your movie name:</label>
    <input type="text" name="movie name"><br><br>
    <label>Enter your movie id:</label>
    <input type="text" name="Move id"><br><br>
     <label>Enter your movie type:</label>
    <input type="text" name="Move type"><br><br>
     <label>Enter your movie ratings:</label>
    <input type="text" name="Move ratings"><br><br>
    <label>Enter your movie duration:</label>
    <input type="text" name="Move duration"><br><br>
    <label>Enter your Director:</label>
    <input type="text" name="Director"><br><br>
    <label>Enter your music director:</label>
    <input type="text" name="Music director"><br><br>
    <label>Enter your Hero name:</label>
    <input type="text" name="Hero name"><br><br>
    <button type="submit">Add movie</button>
    
    </form>
    
    <form action="updateMovie" method="post">
    <label>Enter your movie name:</label>
    <input type="text" name="movie name"><br><br>
    <label>Enter your movie id:</label>
    <input type="text" name="Move id"><br><br>
     <label>Enter your movie type:</label>
    <input type="text" name="Move type"><br><br>
     <label>Enter your movie ratings:</label>
    <input type="text" name="Move ratings"><br><br>
    <label>Enter your movie duration:</label>
    <input type="text" name="Move duration"><br><br>
    <label>Enter your Director:</label>
    <input type="text" name="Director"><br><br>
    <label>Enter your music director:</label>
    <input type="text" name="Music director"><br><br>
    <label>Enter your Hero name:</label>
    <input type="text" name="Hero name"><br><br>
    <button type="submit">Update movie</button>
    
    </form>
    
    <form action="DeleteMovie1"  method="post">
    <label>Enter your movie id:</label>
    <input type="text" name="Move id"><br><br>
    <button type="submit">Delete movie</button>
    </form>
    
</body>
</html>