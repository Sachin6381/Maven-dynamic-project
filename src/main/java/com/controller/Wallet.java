package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MovieTicketBookingDaoImpl.UserDaoImpl;
import com.MovieticketBookingModel.User;

@WebServlet("/Wallet")
public class Wallet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	doGet(request, response);
		
		int wallet=Integer.parseInt(request.getParameter("amount"));
		String email=request.getParameter("email");
		User use=new User(wallet,email);
		UserDaoImpl dao=new UserDaoImpl();
		dao.updatewallet(use);
		response.sendRedirect("Show.jsp");
	}

}
