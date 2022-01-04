package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MovieTicketBookingDaoImpl.UserDaoImpl;
import com.MovieticketBookingModel.User;

@WebServlet("/Forget")
public class ForgetPass extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String names=request.getParameter("forget");
		String pass=request.getParameter("password");
		User use=new User( names, pass);
		System.out.println(use);
	    UserDaoImpl impl=new UserDaoImpl();
		System.out.println(impl.updateUser(use));
		response.sendRedirect("Login1.jsp");
	}

}
