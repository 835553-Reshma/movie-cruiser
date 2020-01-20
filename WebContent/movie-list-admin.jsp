<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Movie List Admin</title>
<link rel="icon" href="images\logo.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <header> &nbsp;&nbsp;Movie Cruiser &nbsp;&nbsp; <img src="images\logo.png" width=30
        height=30 /> <nav> <a class="movies" href="ShowMovieListAdmin">Movies</a> </nav> </header>
    <h1 class="heading">Movies</h1>
    <table cellspacing=10>
        <tr>
            <th align="left" width=30%>Title</th>
            <th class="align-right">Box Office</th>
            <th class="align-center">Active</th>
            <th class="align-center">Date of Launch</th>
            <th class="align-center">Genre</th>
            <th class="align-center">Has Teaser</th>
            <th class="align-center">Action</th>
        </tr>
        <c:forEach items="${movie}" var="movie">
            <tr>
                <td>${movie.getTitle()}</td>
                <td class="align-right"><f:setLocale value="en_US" /> <f:formatNumber
                        type="currency" value="${movie.getBoxOffice()}" minFractionDigits="0"></f:formatNumber></td>
                <td class="align-center"><c:choose>
                        <c:when test="${movie.isActive()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td class="align-center"><f:formatDate value="${movie.getDateOfLaunch()}"
                        pattern="dd/MM/yyyy"></f:formatDate></td>
                <td class="align-center">${movie.getGenre()}</td>
                <td class="align-center"><c:choose>
                        <c:when test="${movie.isHasTeaser()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td class="align-center"><a href="ShowEditMovie?movieId=${movie.getMovieId()}">Edit</a></td>
            </tr>
        </c:forEach>
    </table>



    <footer> Copyright &copy; 2019 </footer>
</body>

</html>