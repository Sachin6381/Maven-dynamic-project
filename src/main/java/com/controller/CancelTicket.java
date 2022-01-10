package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MovieTicketBookingDaoImpl.BookingDaoImpl;
import com.MovieticketBookingModel.Bookingdetail;
@WebServlet("/bookcancel")
public class CancelTicket extends HttpServlet{

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
         String booking=request.getParameter("cancel");
         String ticket=request.getParameter("status");
         BookingDaoImpl book=new BookingDaoImpl();
         Bookingdetail bookingdetail = new Bookingdetail(booking,ticket);
	     
         book.update(bookingdetail);
}
}