package com.bkmovieapplication.model;

import com.bkmovieapplication.dao.UserDAO;
import com.bkmovieapplication.entity.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Objects;

import static com.bkmovieapplication.utility.CommonUtility.forwardToPage;

public class UserDB {

    private final UserDAO userDAO;
    private final HttpServletRequest request;
    private final HttpServletResponse response;

    public UserDB(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
        userDAO = new UserDAO();
    }

    public void login() throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User loginResult = userDAO.checkEmailAndPassword(email, password);
        if (loginResult != null) {
            // the value of the attribute in the request lives only at the time of the
            // request is active but the value stored in the session stays on the server as
            // long as the session
            request.getSession().setAttribute("user", loginResult);
            request.getSession().setMaxInactiveInterval(60 * 60 * 24);
            forwardToPage("home", request, response);
        } else {
            forwardToPage("/page/login.jsp", "Login failed.", request, response);
        }
    }

    public void signup() throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phonenum = request.getParameter("phonenum");
        String password = request.getParameter("password");
        String confirmpassword = request.getParameter("confirmpassword");
        if (!password.equals(confirmpassword)) {
            forwardToPage("page/login.jsp", "Password does not match!", request, response);
        } else {
            boolean a = userDAO.checkAccountExist(username, email);
            if (a == true) {
                userDAO.create(username, email, password, phonenum);
                forwardToPage("/page/login.jsp", "Sign Up Success!", request, response);
            } else {
                forwardToPage("/page/login.jsp", "Email already exists!", request, response);
            }
        }
    }
}
