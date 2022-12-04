/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bkmovieapplication.dao;

import com.bkmovieapplication.entity.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.bkmovieapplication.context.DBContext;
import java.util.ArrayList;
import java.util.List;

public class BookmarkedDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    String dbquery = "moviedb";//oj3bOO0Agn

    public List<Bookmarked> getALLBookmarked() {
        List<Bookmarked> List = new ArrayList<>();
        String query = "select * from" + dbquery + ".bookmarked";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                List.add(new Bookmarked(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3)
                ));
            }
            return List;
        } catch (Exception e) {
        }
        return null;
    }
}
