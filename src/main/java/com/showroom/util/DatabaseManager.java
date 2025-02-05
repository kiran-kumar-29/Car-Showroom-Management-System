package com.showroom.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DatabaseManager {
    private static final String URL = "jdbc:mysql://localhost:3306/csms";
    private static final String USER = "root";
    private static final String PASSWORD = "Kiran@{2924}";

    // Method to get a database connection
    private Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }

    // Method to save user personal details
    public void saveUserDetails(String fullname, String username, String email) {
        String sql = "INSERT INTO user_details (fullname, username, email) VALUES (?, ?, ?)";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, fullname);
            pstmt.setString(2, username);
            pstmt.setString(3, email);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to update user personal details
    public void updateUserDetails(int id, String fullname, String username, String email) {
        String sql = "UPDATE user_details SET fullname = ?, username = ?, email = ? WHERE id = ?";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, fullname);
            pstmt.setString(2, username);
            pstmt.setString(3, email);
            pstmt.setInt(4, id);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to delete user details
    public void deleteUserDetails(int id) {
        String sql = "DELETE FROM user_details WHERE id = ?";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to save user address details
    public void saveUserAddress(int userId, String houseNumber, String area, String landmark, 
                                 String town, String city, String state, 
                                 String country, String pincode) {
        String sql = "INSERT INTO user_address (user_id, house_number, area, landmark, town, city, state, country, pincode) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, userId);
            pstmt.setString(2, houseNumber);
            pstmt.setString(3, area);
            pstmt.setString(4, landmark);
            pstmt.setString(5, town);
            pstmt.setString(6, city);
            pstmt.setString(7, state);
            pstmt.setString(8, country);
            pstmt.setString(9, pincode);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to update user address details
    public void updateUserAddress(int id, String houseNumber, String area, String landmark, 
                                   String town, String city, String state, 
                                   String country, String pincode) {
        String sql = "UPDATE user_address SET house_number = ?, area = ?, landmark = ?, town = ?, city = ?, state = ?, country = ?, pincode = ? WHERE id = ?";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, houseNumber);
            pstmt.setString(2, area);
            pstmt.setString(3, landmark);
            pstmt.setString(4, town);
            pstmt.setString(5, city);
            pstmt.setString(6, state);
            pstmt.setString(7, country);
            pstmt.setString(8, pincode);
            pstmt.setInt(9, id);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to delete user address
    public void deleteUserAddress(int id) {
        String sql = "DELETE FROM user_address WHERE id = ?";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to retrieve user details
    public ResultSet getUserDetails(int id) {
        String sql = "SELECT * FROM user_details WHERE id = ?";
        ResultSet rs = null;
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            rs = pstmt.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }

    // Method to retrieve user address details
    public ResultSet getUserAddress(int userId) {
        String sql = "SELECT * FROM user_address WHERE user_id = ?";
        ResultSet rs = null;
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, userId);
            rs = pstmt.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }
}
