package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;

import com.MovieTicketBookingDao.Theatreinformation;
import com.MovieTicketBookingDaoImpl.BookingDaoImpl;
import com.MovieTicketBookingDaoImpl.MovieDaoImpl;
import com.MovieTicketBookingDaoImpl.TheatreDaoImpl;
import com.MovieticketBookingModel.Bookingdetail;
import com.MovieticketBookingModel.Movie;
@WebServlet("/bookmov")
public class BookingMovieController extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	MovieDaoImpl movieDaoImpl = new MovieDaoImpl();


	HttpSession session = req.getSession();
	     int userid=(int)session.getAttribute("userid");
	     System.out.println("session issue "+userid);
	     int mvid=Integer.parseInt(req.getParameter("Movie"));
	     int thid=Integer.parseInt(req.getParameter("theatre"));
	     session.setAttribute("theaterid", thid);
	     int seat=Integer.parseInt(req.getParameter("Seats"));
	     session.setAttribute("Seats",seat);
	     Movie movie = new Movie(mvid);

	     String mvname=movieDaoImpl.movie(movie);

	     int totalprice = 180 * seat;
	     session.setAttribute("totalprice",totalprice);

	     System.out.println(""+userid +mvid+thid+seat+mvname+totalprice + "");

	     BookingDaoImpl bookingDaoImpl = new BookingDaoImpl();
	     Bookingdetail bookingdetail = new Bookingdetail(userid,thid,seat,totalprice,mvname);

	    bookingDaoImpl.insert(bookingdetail);
	    com.MovieticketBookingModel.Theatreinformation theatreinformation = new com.MovieticketBookingModel.Theatreinformation(thid, mvname);
	    TheatreDaoImpl theatreDaoImpl = new TheatreDaoImpl();
	    try {
	    	System.out.println(theatreDaoImpl.fetch(theatreinformation));
			int dedseat = theatreDaoImpl.fetch(theatreinformation)-seat;
			theatreDaoImpl.updateseat(dedseat, thid);
			resp.sendRedirect("BookingSuccess.jsp");

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	   
	     
}
                   
}
         
