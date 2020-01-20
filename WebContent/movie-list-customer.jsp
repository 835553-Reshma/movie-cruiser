<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Movie List Customer</title>
<link rel="icon" href="images\logo.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
<script src="js\script.js"></script>
</head>
<body>
    <header> &nbsp;&nbsp;Movie Cruiser &nbsp;&nbsp; <img src="images\logo.png" width=30
        height=30 /> <nav> <a class="movies" href="ShowMovieListCustomer">Movies</a> <a
        class="favorites" href="ShowFavorite">Favorites</a> </nav> </header>
    <h1 class="heading">Movies</h1>
    <c:if test="${addFavoriteStatus==true}">
        <h4 class="paragraph" align="center">
            <b><h3>Movie added to Favorites Successfully</h3></b>
        </h4>
    </c:if>
    <table cellpadding=5px>
        <tr>
            <th align="left" width=30%>Title</th>
            <th class="align-right">Box Office</th>
            <th class="align-center">Genre</th>
            <th class="align-center">Has Teaser</th>
            <th class="align-center">Action</th>
        </tr>
        <c:forEach items="${movie}" var="movie">
            <tr>
                <td>${movie.getTitle()}</td>
                <td class="align-center"><f:setLocale value="en_US" /> <f:formatNumber
                        type="currency" value="${movie.getBoxOffice()}" minFractionDigits="0"></f:formatNumber></td>
                <td class="align-center">${movie.getGenre()}</td>
                <td class="align-center"><c:choose>
                        <c:when test="${movie.isHasTeaser()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td class="align-center"><a href="AddToFavorite?movieId=${movie.getMovieId()}">Add
                        to Favorite</a></td>
            </tr>
        </c:forEach>
    </table>

    <footer> Copyright &copy; 2019 </footer>
</body>
</html>