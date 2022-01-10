<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.MovieTicketBookingDaoImpl.*" %>
    <%@ page import="java.util.*" %>
    <%@ page import="com.MovieticketBookingModel.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>

.viewall{
{
position:relative;
margin-left:400px;
}

 body {
  background-image: url('web_3.jpg');
  background-repeat: no-repeat;
  background-size:cover;
}

</style>
</head>

<body>

<% 
   int userid=(int)session.getAttribute("userid");     
   
   User san=new User(userid);
   UserDaoImpl dao= new UserDaoImpl();
   List<User> listproduct=dao.currentUser1(san);
   
   
	%>
          <h2 class="Userdetail">User Detail</h2>
          
        
      
        <table border=1 >
            <tbody>
                <tr>
                 
                <%int count=0;
                for(User  user1: listproduct){
                	%>
                    <td>
                        <table id="carproduct">
                            <tbody>
                                <tr>
                                      <div class="one">
                                      
                                         <td class="viewall">
                                    
                                        <span>UserID: <%=user1.getUser_id()%> </span><br>
                                        <span>Name : <%=user1.getUser_name()%> </span><br>
                                        <span>Gender : <%=user1.getGender()%>  </span><br>
                                        <span>Email ID: <%=user1.getEmail_id()%> </span><br>
                                        <span>Mobile number: <%=user1.getMobile_num()%></span><br>
                                         <span>Password:<%= user1.getE_password() %></span><br>
                                         <span>Wallet : <%=user1.getwallet()%> </span><br>
                                          
                                           </div> 
                                           
                                            
                                       
                                    </td>
                                </tr>
                            </tbody>
                        </table>  
                            
                    </td>
                       <% count ++;
                       if(count==5){ %> 
                    	   </tr>
                    	   <tr>              
                     <%count=0; }}%>  
                        
                </tr>
            </tbody>
        </table>
         
     
  


</body>
</html>