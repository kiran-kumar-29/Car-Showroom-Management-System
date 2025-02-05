package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {

    private static final String dbURL = "jdbc:mysql://localhost:3306/csms"; // Database URL
    private static final String dbUser = "root"; // Database username
    private static final String dbPassword = "Kiran@{2924}"; // Database password

    public static Connection getConnection() {
        Connection connection = null;
        try {
            // Load MySQL JDBC Driver (optional with newer versions of JDBC)
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Establish the connection
            connection = DriverManager.getConnection(dbURL, dbUser, dbPassword);
            System.out.println("Database connection established successfully.");
        } catch (ClassNotFoundException e) {
            System.out.println("MySQL JDBC Driver not found.");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Error connecting to the database.");
            e.printStackTrace();
        }
        return connection;
    }

    public static void main(String[] args) {
        // Test the connection
        Connection connection = getConnection();
        
        if (connection != null) {
            System.out.println("Connection successful!");
            // Close the connection
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            System.out.println("Failed to make connection.");
        }
    }
}
