package com.cognizant.movie.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.cognizant.movie.model.Movie;
import com.cognizant.movie.util.DateUtil;

public class MovieDaoCollectionImpl implements MovieDao {
    private static List<Movie> movieLists;

    public MovieDaoCollectionImpl() {
        if (movieLists == null || movieLists.isEmpty()) {
            Movie movie1 = new Movie(1, "Avatar", 2787965087L, true,
                    DateUtil.convertToDate("15/03/2017"), "Science Fiction", true);
            Movie movie2 = new Movie(2, "The Avengers", 1518812988L, true,
                    DateUtil.convertToDate("23/12/2017"), "Superhero", false);
            Movie movie3 = new Movie(3, "Titanic", 2187463944L, true,
                    DateUtil.convertToDate("21/08/2017"), "Romance", false);
            Movie movie4 = new Movie(4, "Jurassic World", 1671713208L, false,
                    DateUtil.convertToDate("02/07/2017"), "Science Fiction", true);
            Movie movie5 = new Movie(5, "Avengers:End Game", 2750760348L, true,
                    DateUtil.convertToDate("02/11/2022"), "Superhero", true);
            movieLists = new ArrayList<Movie>();
            movieLists.add(movie1);
            movieLists.add(movie2);
            movieLists.add(movie3);
            movieLists.add(movie4);
            movieLists.add(movie5);
        }
    }

    @Override
    public List<Movie> getMovieListAdmin() {

        return movieLists;
    }

    @Override
    public List<Movie> getMovieListCustomer() {
        ArrayList<Movie> movie = new ArrayList<Movie>();
        for (Movie movieList : movieLists) {
            if ((movieList.getDateOfLaunch().before(new Date())
                    || movieList.getDateOfLaunch().equals(new Date()))
                    && movieList.isActive() == true) {
                movie.add(movieList);
            }
        }
        return movie;
    }

    @Override
    public Movie getMovieById(long movieId) {
        for (Movie movieList : movieLists) {
            if (movieList.getMovieId() == movieId) {
                return movieList;
            }
        }

        return null;
    }

    @Override
    public void modifyMovieList(Movie movie) {
        for (int i = 0; i < movieLists.size(); i++) {
            if (movieLists.get(i).getMovieId() == movie.getMovieId()) {
                movieLists.set(i, movie);
            }

        }

    }

}
