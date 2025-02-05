package com.showroom.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDatabaseUtil {
 private static final String DB_URL = "jdbc:mysql://localhost:3306/csms";
 private static final String DB_USER = "root";
 private static final String DB_PASSWORD = "Kiran@{2924}";

 public static Connection getConnection() throws SQLException {
     return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
 }

 public static boolean registerUser(String fullname, String username, String email, String password) {
     String query = "INSERT INTO users (full_name, username, email, password) VALUES (?, ?, ?, ?)";
     try (Connection con = getConnection(); 
          PreparedStatement ps = con.prepareStatement(query)) {
          
         ps.setString(1, fullname);
         ps.setString(2, username);
         ps.setString(3, email);
         ps.setString(4, password);
         
         int result = ps.executeUpdate();
         return result > 0;
     } catch (SQLException e) {
         e.printStackTrace();
         return false;
     }
 }
}

