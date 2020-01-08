package com.cognizant.movie.model;

import java.util.List;

public class Favorite {
    private List<Movie> favoriteList;
    private int total;

    public Favorite() {
        // TODO Auto-generated constructor stub
    }

    public Favorite(List<Movie> favoriteList, int total) {
        super();
        this.favoriteList = favoriteList;
        this.total = total;
    }

    public List<Movie> getFavoriteList() {
        return favoriteList;
    }

    public void setFavoriteList(List<Movie> favoriteList) {
        this.favoriteList = favoriteList;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "Favorite [ total=" + total + ",getTotal()=" + getTotal() + ",getCalss()="
                + getClass() + ",hashCode()=" + hashCode() + ",toString()=" + super.toString()
                + "]";
    }

}
