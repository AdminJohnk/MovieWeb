/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bkmovieapplication.model;

import com.bkmovieapplication.dao.MovieDAO;
import com.bkmovieapplication.entity.*;

import com.bkmovieapplication.dao.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import static com.bkmovieapplication.utility.CommonUtility.forwardToPage;
import java.util.ArrayList;

public class MovieDB {

    private final MovieDAO movieDAO;
    private final HttpServletRequest request;
    private final HttpServletResponse response;

    public MovieDB(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
        movieDAO = new MovieDAO();
    }


    public void getAMovie(String category) throws ServletException, IOException {
        List<Movie> List = new ArrayList<>();
        List = movieDAO.getCategoryMovie(category);
        if (List != null) {
            request.setAttribute(category, List);
        }
    }

    public void getALLMovie() throws ServletException, IOException {
        List<Movie> List = new ArrayList<>();
        List = movieDAO.getALLMovie();
        if (List != null) {
            request.setAttribute("ListALLMovie", List);
        }
    }

    public void getMovieInBookmarked(Integer userId) throws ServletException, IOException {
        List<Movie> List = new ArrayList<>();
        List = movieDAO.getMovieInBookmarked(userId);
        if (List != null) {
            request.setAttribute("ListMovieInBookmarked", List);
        }
    }
}
