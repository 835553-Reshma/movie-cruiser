<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Favorites</title>
<link rel="icon" href="images\logo.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
<script src="js\script.js"></script>
</head>
<body>
    <header> &nbsp;&nbsp;Movie Cruiser &nbsp;&nbsp; <img src="images\logo.png" width=30
        height=30 /> <nav> <a class="movies" href="ShowMovieListCustomer">Movies</a> <a
        class="favorites" href="ShowFavorite">Favorites</a> </nav> </header>
    <h1 class="heading">Favorites</h1>
    <c:if test="${removeFavoriteItemStatus==true}">
        <h4 class="paragraph" align="center">
            <b><h3>Movie removed from Favorites successfully</h3></b>
        </h4>
    </c:if>
    <c:set var="favorite" value="${favorite}"></c:set>
    <table cellpadding=5px>
        <tr>
            <th align="left" width=40%>Title</th>
            <th class="align-right">Box Office</th>
            <th class="align-mid">Genre</th>
            <th class="align-mid"></th>
        </tr>
        <c:forEach items="${movie}" var="movie">
            <tr>
                <td class="align-left">${movie.getTitle()}</td>
                 <td class="align-mid"><f:setLocale value="en_US" /> <f:formatNumber
                        type="currency" value="${movie.getBoxOffice()}" minFractionDigits="0"></f:formatNumber></td>
                <td class="align-mid">${movie.getGenre()}</td>
               
                <td class="align-mid"><a href="RemoveFavorite?movieId=${movie.getMovieId()}">
                        Delete</a></td>

            </tr>
        </c:forEach>

        <tr>
            <td></td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td class="align-left"><b>No. of Favorites:</b> ${favorite.getTotal()}</td>

        </tr>

    </table>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>