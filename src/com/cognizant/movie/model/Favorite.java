package com.cognizant.movie.model;

import java.util.List;

public class Favorite {
    private List<Movie> favoriteList;
    private double total;

    public Favorite() {
        // TODO Auto-generated constructor stub
    }

    public Favorite(List<Movie> favoriteList, double total) {
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

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "Favorite [ total=" + total + ",getTotal()=" + getTotal() + ",getCalss()="
                + getClass() + ",hashCode()=" + hashCode() + ",toString()=" + super.toString()
                + "]";
    }

}
