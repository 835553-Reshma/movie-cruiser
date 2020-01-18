<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Edit Movie</title>
<link rel="icon" href="images\logo.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
<script src="js\script.js">
    
</script>
</head>
<body>
    <c:set var="movie" value="${movie}"></c:set>
    <header> &nbsp;&nbsp;Movie Cruiser &nbsp;&nbsp; <img src="images\logo.png" width=30
        height=30 /> <nav> <a class="movies" href="ShowMovieListAdmin">Movies</a> </nav> </header>
    <h1 class="heading">Edit Movie</h1>

    <form action="EditMovie" method="post" name="movieForm" onsubmit="return validateMovieForm()">
        <input type="hidden" name="id" value="${movie.getMovieId()}" />
        <div>
            <label for="title">Title</label>
        </div>
        <div class="padding-bottom">
            <input type="text" id="title" name="title" value="${movie.getTitle()}" size=68 />
        </div>

        <span>
            <div>
                <label for="boxOffice">Gross($)</label>
            </div>
            <div>
                <input type="text" id="boxOffice" name="boxOffice" value="${movie.getBoxOffice()}"
                    size=10 />
            </div>
        </span> <span>
            <div class="padding">
                <label for="active">Active</label>
            </div>
            <div class="padding-bottom">
                <c:choose>
                    <c:when test="${movie.isActive()==true}">
                        <input type="radio" value="Yes" name="active" checked="checked" />Yes
                        <input type="radio" value="No" name="active" />No</c:when>
                    <c:otherwise>
                        <input type="radio" value="Yes" name="active" />Yes
                        <input type="radio" value="No" name="active" checked="checked" />No</c:otherwise>
                </c:choose>
            </div>
        </span> <span>
            <div class="padding">
                <label for="dateOfLaunch">Date of Launch</label>
            </div>
            <div class="padding">
                <f:formatDate value="${movie.getDateOfLaunch()}" var="dateOfLaunch"
                    pattern="dd/MM/yyyy" />
                <input type="text" name="dateOfLaunch" id="dateOfLaunch" value="${dateOfLaunch}" />
            </div>
        </span> <span>
            <div class="padding">Genre</div>
            <div class="padding">
                <select name="genre">
                    <option value="${movie.getGenre()}">${movie.getGenre()}</option>
                    <option value="Science Fiction">Science Fiction</option>
                    <option value="Superhero">Superhero</option>
                    <option value="Romance">Romance</option>
                    <option value="Comedy">Comedy</option>
                    <option value="Adventure">Adventure</option>
                    <option value="Thriller">Thriller</option>
                </select>
            </div>
        </span>
        <div class="padding-bottom">
            <label for="hasTeaser"> <c:choose>
                    <c:when test="${movie.isHasTeaser()==true}">
                        <label for="has-teaser"><input type="checkbox" name="hasTeaser"
                            value="Yes" id="has-teaser" class="checkbox" checked="checked" />
                    </c:when>
                    <c:otherwise>
                        <input type="checkbox" name="hasTeaser" value="No" />
                    </c:otherwise>
                </c:choose><span>Has Teaser</span></label>
        </div>
        <input type="submit" value="Save" class="submit" />
    </form>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>