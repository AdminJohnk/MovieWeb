package com.bkmovieapplication.context;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.jsp.tagext.TryCatchFinally;

public class DBContext {

    public Connection getConnection() throws Exception {
        
        final String url = "jdbc:mysql://remotemysql.com:3306/oj3bOO0Agn";
        final String user = "oj3bOO0Agn";
        final String password = "ptIj0LrRVx";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;


// final String url = "jdbc:mysql://localhost:3306/moviedb";
//        final String user = "root";
//        final String password = "12345";
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            return DriverManager.getConnection(url, user, password);
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return null;
    }

    /* Insert your other code right after this comment */
 /*
     * Change/update information of your database connection, DO NOT change name of
     * instance variables in this class
     */
 /*private final String serverName = "localhost";
    private final String dbName = "QuanLyPhimDB";

    private final String portNumber = "1433";
    private final String instance="";//LEAVE THIS ONE EMPTY IF YOUR SQL IS A SINGLE INSTANCE SQLEXPRESS
    private final String userID = "sa";
    private final String password = "12";*/
    public static void main(String[] args) {
        try {
            System.out.println(new DBContext().getConnection());
        } catch (Exception e) {
        }
    }
}
