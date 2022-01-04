package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MovieTicketBookingDaoImpl.MovieDaoImpl;
import com.MovieticketBookingModel.Movie;

@WebServlet("/updateMovie")
public class MovieUpdate extends HttpServlet {

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String moviename=request.getParameter("movie name");
		int movieid=Integer.parseInt(request.getParameter("Move id"));
		String movietype=request.getParameter("Move type");
		int movieratings=Integer.parseInt(request.getParameter("Move ratings"));
		int movieduration=Integer.parseInt(request.getParameter("Move duration"));
		String director=request.getParameter("Director");
		String musicdirector=request.getParameter("Music director");
		String heroname=request.getParameter("Hero name");
		Movie add1=new Movie(moviename, movieid,movietype,movieratings,movieduration,director,musicdirector, heroname);
		MovieDaoImpl addmovie1=new MovieDaoImpl();
		addmovie1.update(add1);
		response.sendRedirect("Addmovie.jsp");
	}

}