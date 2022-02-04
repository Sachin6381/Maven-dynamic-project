<%@page import="java.sql.ResultSet"%>
<%@page import="com.movieticketbookingmodel.Movie"%>
<%@page import="com.movieticketbookingdaoimpl.MovieDaoImpl"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">


<head>
<meta charset="ISO-8859-1">
<title>View All Movies</title>




<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<style>
*style {
	margin: 0;
	padding: 0;
}

span {
	position: relative;
	top: 260px;
	left: -230px;
	font-size: 15px;
}

.movieid {
	visibility: hidden;
}

.searchbtn {
	position: absolute;
	top: 15px;
	left: 600px;
	text-decoration: none;
	color: Block;
	text-decoration: none;
}

.log {
	position: absolute;
	top: 1px;
	left: 1250px;
	text-decoration: none;
	color: white;
}

button {
	position: relative;
	top: 240px;
	left: -220px;
}

.contact {
	position: absolute;
	top: 1px;
	left: 1000px;
	text-decoration: none;
	color: white;
}

.contacts {
	position: absolute;
	top: 1px;
	left: 1100px;
	text-decoration: none;
	color: white;
}

table {
	margin-left: 30px;
}

p {
	margin-top: 10px;
	margin-left: 10px;
	color: white;
	font-size: 24px;
}

.movie {
	position: relative;
	left: 8px;
	color: white;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
	padding-top: 5px;
}

li:last-child {
	border-right: none;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 18px;
}

li a:hover:not(.active) {
	background-color: #111;
	text-decoration: none;
}

.active {
	font-size: x-large;
}

body {
	background-image: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)),
		url('Rohini Sliver Screen.jpg');
	background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;
	font-weight: bold;
}

.border {
	border: 1px solid black;
	position: relative;
	top: 200px;
}

table td {
	padding-bottom: 120px;
}
</style>

</head>
</body>

<body>
	<ul>
		<div class="top">

			<li><a class="active" href="Show.jsp">Home</a></li>
			<li><a href="UserServlet">Profile</a></li>
			<li><a href="wallet.jsp">Recharge Wallet</a></li>
			<li><a href="MybookingServlet">My Bookings</a></li>

		</div>

		<div class="log">

			<li><a href="login.jsp">Logout</a></li>

		</div>


		<div class="contact">

			<li><a href="about Us.jsp">About Us</a></li>

		</div>

		<div class="contacts">

			<li><a href="contact Us.jsp">Contact Us</a></li>

		</div>

	</ul>


	<table>
		<tbody>
			<tr>



				<div class="searchbtn">

					<form action="SearchServlet" method="post">
					
					

						<input type="text" name="moviename" id="moviename" required> <input
							type="submit" class="btn btn-primary" value="Search" required>
				</div>
				</form>
			<tr>
				<p>Movie List
				<p>
					<c:set var="count" value="1" />

					<c:forEach items="${Movielist}" var="MovieList">

						<td>
							<table id="movietable">
								<tbody>

									<tr>

										<td><img src="images/${MovieList.getImages()}"
											width=250px height=250px alt="img"></td>

                                             
                                          
                                           
										<td class="movie"><span id="movie name">Movie
												Name: ${MovieList.getMoviename() } </span><br> <span>Movie
												type: ${MovieList.getMovietype() } </span><br> <span>Movie
												Ratings:${MovieList.getMovieratings() } </span><br> <span>Movie
												Duration:${MovieList.getMovieduration()}Hours</span><br> <span>
												Director:${MovieList.getDirector() }</span><br> <span>Music
												Director:${MovieList.getMusicdirector() }</span><br> <span>Hero
												Name:${MovieList.getHeroname() }</span><br> <input type="text"
											value=${MovieList.getMovielink() } name="movlink"
											class="movieid">
											<button>
												<a
                                                    href="Moviedetails?mvname=${MovieList.getMoviename()}&movlink=${MovieList.getMovielink()}"
													class="btn btn-primary">Theatre</a>
											</button> </span>
										</div>

											
											
											</div></td>
									</tr>
								</tbody>
							</table>

						</td>
						<c:choose>

							<c:when test="${count==3}">
								<c:set var="count" value="1" />
			</tr>
			<tr>
				</c:when>
				<c:otherwise>
					<c:set var="count" value="${count+1}" />
				</c:otherwise>
				</c:choose>
				</c:forEach>

			</tr>
		</tbody>
	</table>

	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



</body>
</html>