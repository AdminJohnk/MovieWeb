package com.bkmovieapplication.dao;

import com.bkmovieapplication.entity.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.bkmovieapplication.context.DBContext;

public class UserDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    String dbquery = "moviedb";//oj3bOO0Agn

    public void create(String username, String email, String password, String phonenum) {
        String query = "insert into " + dbquery + ".user (	\n"
                + "	userName,\n"
                + "    email,\n"
                + "    passWord,\n"
                + "    phoneNum)\n"
                + "values('?','?','?','?')";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, phonenum);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public User checkEmailAndPassword(String email, String password) {
        String query = "SELECT * FROM " + dbquery + ".user\n"
                + "where email = ? and passWord = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public boolean checkAccountExist(String username, String email) {
        String query = "select * from " + dbquery + ".user\n"
                + "where userName = ? and email = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getString(3), rs.getString(4)
                ) == null;
            }
        } catch (Exception e) {
        }
        return true;
    }
}
