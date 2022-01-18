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
.one{

  color:white;


}
h2
{
 color:white;
}

 body {
  background:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url('Rohini Sliver Screen.jpg');
  background-repeat: no-repeat;
  background-size:cover;
}
table
{
   width:100%;
   
}

</style>




</head>
<body>
 <% int usen=(int)session.getAttribute("userid");
 User usew=new User(usen);
 UserDaoImpl dao=new UserDaoImpl();
 List<User> showUser=dao.showUser();
 %>

	
	
	
        <h2 class="Userdetail">User Details</h2>
          
        
        <div class="recentlyaddedlist">
        <table border=1 >
        <tbody>
        <tr>
                <%int count=0;
                for(User userdetail: showUser){
                	%>
                    <td>
                        <table id="user">
                            <tbody>
                                <tr>
                                     
                                    <td class="viewall">
                                    
                                    <div class="one">
                                        <span>User Id : <%=userdetail.getUser_id()%> </span><br>
                                        <span>User name : <%=userdetail.getUser_name()%>  </span><br>
                                        <span>Email Id: <%=userdetail.getEmail_id()%> </span><br>
                                        <span>Mobile Number : <%=userdetail.getMobile_num()%> </span><br>
                                        <span>Password: <%=userdetail.getE_password()%></span><br>
                                        <span>Wallet : <%=userdetail.getwallet()%></span><br>
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
        </div>
</body>
</html>