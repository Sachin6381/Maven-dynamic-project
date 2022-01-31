package com.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Exception.InvalidUserException;
import com.MovieticketBookingModel.User;
import com.movieticketbookingdaoimpl.UserDaoImpl;













@WebServlet("/login")

public class Login extends HttpServlet {
	

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    HttpSession session = request.getSession();
		String email=request.getParameter("Email");
		String password=request.getParameter("Pass");
		User use2=new User(email, password);
		UserDaoImpl userDaoImpl = new UserDaoImpl();
		User user1 = new User(email,null);
		int uid = userDaoImpl.user(user1);
		if(uid > 0) {
			session.setAttribute("userid", uid);
		}
		
         String userrole= userDaoImpl.validateUser(email,password);
         if(userrole.equals("admin")) {
   
				response.sendRedirect("Addmovie.jsp");
				
			}else if(userrole.equals("user"))
				
			{	
			 response.sendRedirect("ShowServlet");
			
			}
	  
	else 
		
		{
			try
			{
			   throw new InvalidUserException();	
			} catch(InvalidUserException e)
			{
			   String invaliduser = e.getMessage();
			   
			   response.sendRedirect("MovieBooking.jsp?message="+e.getMessage()+"&url=login.jsp");
			}
		}


	}
	  
	   
		
       
	}


