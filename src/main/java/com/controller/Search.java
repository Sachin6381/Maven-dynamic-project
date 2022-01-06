package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.MovieTicketBookingDaoImpl.MovieDaoImpl;
import com.MovieticketBookingModel.Movie;

/**
 * Servlet implementation class Search
 */
@WebServlet("/Search")

public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Search() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try {
			//String Location = request.getParameter("location")
			 MovieDaoImpl search = new MovieDaoImpl();
			 String moviename = request.getParameter("moviename");
				System.out.println(moviename);

			            List<Movie> searchlist = search.Search(moviename);
			           
			           
			           HttpSession session = request.getSession();
			            session.setAttribute("moviename",searchlist );
			           
			            response.sendRedirect("searchmovies.jsp");

System.out.println("hfsg");			       
			  response.getWriter().print("Search Suceessfully");


			} catch (Exception e) {
			System.out.println(e);

			}

			System.out.println("welcome");

			}
			



	}


