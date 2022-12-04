package com.bkmovieapplication.webxemphim;

import com.bkmovieapplication.model.MovieDB;
import static com.bkmovieapplication.utility.CommonUtility.forwardToPage;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "HomeServlet", urlPatterns = {"","/home"})
public class HomeServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         MovieDB movie = new MovieDB(request, response);
         movie.getAMovie("Popular");
         movie.getAMovie("TopRated");
         movie.getAMovie("Hot");
         movie.getAMovie("Upcoming");
         //movie.getALLMovie();
         forwardToPage("page/admin.jsp", request, response);
        
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
