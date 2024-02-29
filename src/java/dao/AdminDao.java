/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import model.Admin;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 *
 * @author huypd
 */
public class AdminDao extends DBContext {
    public Admin check(String user, String pass) {
        String sql = "select * from Admin where Username=? and Password=?";
        try {
            
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            if (rs.next())
                return new Admin(user, pass, rs.getInt("role"));
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return null;
    }
}
