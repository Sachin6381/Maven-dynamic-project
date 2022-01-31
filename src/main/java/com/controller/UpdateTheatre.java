package com.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.MovieticketBookingModel.Theatreinformation;
import com.movieticketbookingdaoimpl.TheatreDaoImpl;


@WebServlet("/Updatetheatre")
public class UpdateTheatre extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		HttpSession session=request.getSession();
		DateTimeFormatter formatter =
			    DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
				String theatrename=request.getParameter("theatrename");
				int movieid=Integer.parseInt(request.getParameter("movieid"));
				int theatreid=Integer.parseInt(request.getParameter("theatre Id"));
				int numberseats=Integer.parseInt(request.getParameter("Numberseats"));
				session.setAttribute("numberseats", numberseats);
				String theatreaddress=request.getParameter("theatre Address");
				int theatreratings=Integer.parseInt(request.getParameter("theatre Ratings"));
				String theatreDate =request.getParameter(" Movie date and time"); //"2021-12-21 05:30";
		        int price=Integer.parseInt(request.getParameter("Price"));
		        
		    	session.setAttribute("moviedate",theatreDate );
		        
		    	
		        
			    LocalDateTime mvTimeDate = LocalDateTime.parse(theatreDate);
			
				Theatreinformation dao=new Theatreinformation(theatrename,movieid,theatreid,numberseats,theatreaddress,theatreratings,price,mvTimeDate );
				TheatreDaoImpl theatre1=new TheatreDaoImpl();
			    theatre1.update(dao);
			    ResultSet rs=TheatreDaoImpl.moviedetail();
			    try {
					session.setAttribute("noofseats", rs.getInt(4));
				} catch (SQLException e) {
				
					e.printStackTrace();
				}
				System.out.println(session.getAttribute("noofseats"));
				response.sendRedirect("addTheatre.jsp");
				
	} 

}
