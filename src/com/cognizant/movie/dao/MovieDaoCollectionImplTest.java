package com.cognizant.movie.dao;

import java.util.List;

import com.cognizant.movie.model.Movie;
import com.cognizant.movie.util.DateUtil;

public class MovieDaoCollectionImplTest {
    static MovieDao moviedao = new MovieDaoCollectionImpl();

    public static void main(String[] args) {
        testGetMovieListAdmin();
        testGetMovieListCustomer();
        testEditMovie();
        testGetMovieListAdmin();
        testGetMovie();
    }

    public static void testGetMovieListAdmin() {
        System.out.println("Admin View");
        List<Movie> movie = moviedao.getMovieListAdmin();
        System.out.printf("%-20s%-20s%-20s%-20s%-20s%-20s%-20s\n", "Id", "Title", "Box Office",
                "Active", "Date of Launch", "Genre", "Has Teaser");
        for (Movie movieLists : movie) {
            System.out.println(movieLists);
        }
    }

    public static void testGetMovieListCustomer() {
        System.out.println("Customer View");
        List<Movie> movielist = moviedao.getMovieListCustomer();
        System.out.printf("%-20s%-20s%-20s%-20s%-20s%-20s%-20s\n", "Id", "Title", "Box Office",
                "Active", "Date of Launch", "Genre", "Has Teaser");
        for (Movie movieList : movielist) {
            System.out.println(movieList);
        }

    }

    public static void testEditMovie() {
        System.out.println("Edit Movie");
        System.out.printf("%-20s%-20s%-20s%-20s%-20s%-20s%-20s\n", "Id", "Title", "Box Office",
                "Active", "Date of Launch", "Genre", "Has Teaser");
        Movie movie = new Movie(1, "Bhahubali", "$9,234,567,823", true,
                DateUtil.convertToDate("02/01/2020"), "Historical", false);
        moviedao.modifyMovieList(movie);
        System.out.println(movie);

    }

    public static void testGetMovie() {
        System.out.println("Get Movie");
        System.out.printf("%-20s%-20s%-20s%-20s%-20s%-20s%-20s\n", "Id", "Title", "Box Office",
                "Active", "Date of Launch", "Genre", "Has Teaser");
        Movie movie = moviedao.getMovieById(3);
        System.out.println(movie);
    }

}
