package com.cognizant.movie.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.cognizant.movie.model.Favorite;
import com.cognizant.movie.model.Movie;

public class FavoriteDaoCollectionImpl implements FavoriteDao {
    private static HashMap<Long, Favorite> userFavorite;

    public FavoriteDaoCollectionImpl() {
        if (userFavorite == null) {
            HashMap<Long, Favorite> favorites = new HashMap<Long, Favorite>();
            userFavorite = favorites;
        }
    }

    @Override
    public Favorite getAllFavorites(long userId) throws FavoriteEmptyException {
        Favorite favorite = userFavorite.get(userId);
        if ((favorite == null) || favorite.getFavoriteList().isEmpty()) {
            throw new FavoriteEmptyException();
        }
        List<Movie> movieLists = favorite.getFavoriteList();
        int total = movieLists.size();
        favorite.setTotal(total);
        return favorite;
    }

    @Override
    public void addFavoritesById(long userId, long movieId) {
        MovieDao movieLists = new MovieDaoCollectionImpl();
        Movie movie = movieLists.getMovieById(movieId);
        if (userFavorite.containsKey(userId)) {
            userFavorite.get(userId).getFavoriteList().add(movie);
        } else {
            Favorite favorite = new Favorite();
            List<Movie> listMovie = new ArrayList<Movie>();
            listMovie.add(movie);
            favorite.setFavoriteList(listMovie);
            userFavorite.put(userId, favorite);

        }

    }

    @Override
    public void removeFavoritesById(long userId, long movieId) {
        List<Movie> list = userFavorite.get(userId).getFavoriteList();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getMovieId() == movieId) {
                list.remove(i);
                break;
            }
        }

    }

}
