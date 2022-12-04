/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bkmovieapplication.model;

import com.bkmovieapplication.entity.*;

import com.bkmovieapplication.dao.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import static com.bkmovieapplication.utility.CommonUtility.forwardToPage;
import java.util.ArrayList;

public class BookmarkedDB {

    private final BookmarkedDAO bookmarkedDAO;
    private final HttpServletRequest request;
    private final HttpServletResponse response;

    public BookmarkedDB(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
        bookmarkedDAO = new BookmarkedDAO();
    }

    public void getALLMovieInBookmarked() throws ServletException, IOException {
        List<Bookmarked> List = new ArrayList<>();
        List = bookmarkedDAO.getALLBookmarked();

    }

}
