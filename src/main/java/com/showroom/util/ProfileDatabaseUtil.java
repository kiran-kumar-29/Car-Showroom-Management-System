package com.showroom.util;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProfileDatabaseUtil {
    
    // Database connection parameters
    private static final String URL = "jdbc:mysql://localhost:3306/csms"; // Your database URL
    private static final String USER = "root"; // Your database username
    private static final String PASSWORD = "Kiran@{2924}"; // Your database password

    // Method to register personal details
    public static boolean registerPersonalDetails(String fullname, String username, String email, String password) {
        try (Connection con = DriverManager.getConnection(URL, USER, PASSWORD)) {
            String query = "INSERT INTO personal_details (fullname, username, email, password) VALUES (?, ?, ?, ?)";
            try (PreparedStatement ps = con.prepareStatement(query)) {
                ps.setString(1, fullname);
                ps.setString(2, username);
                ps.setString(3, email);
                ps.setString(4, password);
                int result = ps.executeUpdate();
                return result > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Method to update personal details
    public static boolean updatePersonalDetails(int userId, String fullname, String username, String email) {
        try (Connection con = DriverManager.getConnection(URL, USER, PASSWORD)) {
            String query = "UPDATE personal_details SET fullname = ?, username = ?, email = ? WHERE id = ?";
            try (PreparedStatement ps = con.prepareStatement(query)) {
                ps.setString(1, fullname);
                ps.setString(2, username);
                ps.setString(3, email);
                ps.setInt(4, userId);
                int result = ps.executeUpdate();
                return result > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Method to retrieve personal details by username
    public static ResultSet getPersonalDetails(String username) {
        try {
            Connection con = DriverManager.getConnection(URL, USER, PASSWORD);
            String query = "SELECT * FROM personal_details WHERE username = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, username);
            return ps.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    // Method to register address details
    public static boolean registerAddressDetails(int userId, String houseNumber, String area, String landmark, String town, String city, String state, String country, String pincode) {
        try (Connection con = DriverManager.getConnection(URL, USER, PASSWORD)) {
            String query = "INSERT INTO address_details (user_id, house_number, area, landmark, town, city, state, country, pincode) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement ps = con.prepareStatement(query)) {
                ps.setInt(1, userId);
                ps.setString(2, houseNumber);
                ps.setString(3, area);
                ps.setString(4, landmark);
                ps.setString(5, town);
                ps.setString(6, city);
                ps.setString(7, state);
                ps.setString(8, country);
                ps.setString(9, pincode);
                int result = ps.executeUpdate();
                return result > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Method to update address details
    public static boolean updateAddressDetails(int addressId, String houseNumber, String area, String landmark, String town, String city, String state, String country, String pincode) {
        try (Connection con = DriverManager.getConnection(URL, USER, PASSWORD)) {
            String query = "UPDATE address_details SET house_number = ?, area = ?, landmark = ?, town = ?, city = ?, state = ?, country = ?, pincode = ? WHERE id = ?";
            try (PreparedStatement ps = con.prepareStatement(query)) {
                ps.setString(1, houseNumber);
                ps.setString(2, area);
                ps.setString(3, landmark);
                ps.setString(4, town);
                ps.setString(5, city);
                ps.setString(6, state);
                ps.setString(7, country);
                ps.setString(8, pincode);
                ps.setInt(9, addressId);
                int result = ps.executeUpdate();
                return result > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Method to retrieve address details by user ID
    public static ResultSet getAddressDetails(int userId) {
        try {
            Connection con = DriverManager.getConnection(URL, USER, PASSWORD);
            String query = "SELECT * FROM address_details WHERE user_id = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, userId);
            return ps.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}

