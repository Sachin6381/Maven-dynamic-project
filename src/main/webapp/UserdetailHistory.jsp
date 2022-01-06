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
</head>
<body>
  <% UserDaoImpl dao= new UserDaoImpl();
  List<User> showUser;
  showUser=dao.showUser();
	%>
	
	
	
        <h2 class="Userdetail">User Detail</h2>
          
        
        <div class="recently added list">
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
                                        <span>User Id : <%=userdetail.getUser_id()%> </span><br>
                                        <span>User name : <%=userdetail.getUser_name()%>  </span><br>
                                        <span>Email Id: <%=userdetail.getEmail_id()%> </span><br>
                                        <span>Mobile Number : <%=userdetail.getMobile_num()%> </span><br>
                                        <span>Password: <%=userdetail.getE_password()%></span><br>
                                        
                                            
                                       
                                    </td>
                                </tr>
                            </tbody>
                        </table>  
                            
                    </td>
                       <% count ++;
                       if(count==4){ %> 
                    	   </tr>
                    	   <tr>              
                     <%count=0; }}%>  
                       
                </tr>
            </tbody>
        </table>
         
        </div>
    </div>
   </div>
</body>
</html>