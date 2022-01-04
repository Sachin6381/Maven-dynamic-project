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
  List<User> userList=new ArrayList<User>();
	userList=UserDaoImpl .showuser();%>
          <h2 class="Userdetail">User Detail</h2>
          
        
        <div class="recently added list">
        <table border=1 >
            <tbody>
                <tr>
                <%int count=0;
                for(User userdetail: userList){
                	%>
                    <td>
                        <table id="user">
                            <tbody>
                                <tr>
                                     
                                    <td class="viewall">
                                        <span>Name : <%=userdetail.getUser_id()%> </span><br>
                                        <span>password : <%=userdetail.getUser_name()%>  </span><br>
                                        <span>Email : <%=userdetail.getEmail_id()%> </span><br>
                                        <span>Email : <%=userdetail.getMobile_num()%> </span><br>
                                      
                                        <span>phone number: <%=userdetail.getE_password()%></span><br>
                                            
                                       
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
    </div>
   </div>
</body>
</html>