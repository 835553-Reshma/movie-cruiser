package com.cognizant.movie.dao;

import java.util.List;

import com.cognizant.movie.model.Movie;

public class FavoriteDaoCollectionImplTest {
    static FavoriteDao favoriteDao = new FavoriteDaoCollectionImpl();

    public static void main(String[] args) {
        testAddFavorites();
        testGetAllFavorites();
        testRemoveFavorites();
        testGetAllFavorites();
    }

    public static void testAddFavorites() {
        System.out.println("Movie added into favorites");
        favoriteDao.addFavoritesById(1, 2);
        favoriteDao.addFavoritesById(1, 3);

    }

    public static void testRemoveFavorites() {
        System.out.println("Remove Favorite");
        favoriteDao.removeFavoritesById(1, 3);
    }

    public static void testGetAllFavorites() {
        try {
            System.out.println("Retrieving all the movies from favorite");
            List<Movie> list = favoriteDao.getAllFavorites(1).getFavoriteList();
            for (Movie movieLists : list) {
                System.out.println(movieLists);
            }
            System.out.println("Movies:" + favoriteDao.getAllFavorites(1).getTotal());
        } catch (FavoriteEmptyException e) {
            System.err.println(e);
        }
    }

}
