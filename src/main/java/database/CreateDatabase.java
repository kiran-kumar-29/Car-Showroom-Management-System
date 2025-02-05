package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class CreateDatabase {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/";
    private static final String USER = "root";
    private static final String PASSWORD = "Kiran@{2924}";
    private static final String DATABASE_NAME = "carshowroom";

    public static void main(String[] args) {
        try {
            // Connect to MySQL
            Connection connection = DriverManager.getConnection(JDBC_URL, USER, PASSWORD);
            Statement statement = connection.createStatement();

            // Create Database
            statement.executeUpdate("CREATE DATABASE IF NOT EXISTS " + DATABASE_NAME);
            statement.executeUpdate("USE " + DATABASE_NAME);

            // Create car_orders table
            String createCarOrdersTable = "CREATE TABLE IF NOT EXISTS car_orders ("
                    + "orderId INT PRIMARY KEY AUTO_INCREMENT, "
                    + "car_brand VARCHAR(50), "
                    + "brand_model VARCHAR(50), "
                    + "buyer_name VARCHAR(50), "
                    + "buyer_email VARCHAR(50), "
                    + "mobile_number VARCHAR(20), "
                    + "delivery_address VARCHAR(100), "
                    + "order_date DATE, "
                    + "delivery_date DATE, "
                    + "color VARCHAR(20), "
                    + "interior_color VARCHAR(20), "
                    + "alloy_color VARCHAR(20), "
                    + "extra_wheels INT, "
                    + "top_type VARCHAR(20), "
                    + "sun_roof VARCHAR(10), "
                    + "steering_wheel VARCHAR(20), "
                    + "leather_interior VARCHAR(10), "
                    + "body_kit_needed VARCHAR(10), "
                    + "rear_wing_needed VARCHAR(10), "
                    + "rear_wing_type VARCHAR(20), "
                    + "rear_wing_color VARCHAR(20), "
                    + "carbon_fiber_needed VARCHAR(10), "
                    + "carbon_fiber_location VARCHAR(50)"
                    + ")";
            statement.executeUpdate(createCarOrdersTable);
            System.out.println("Cars Order Table Created Successfully.....");

            // Create users table
            String createUsersTable = "CREATE TABLE IF NOT EXISTS users ("
                    + "id INT PRIMARY KEY AUTO_INCREMENT, "
                    + "full_name VARCHAR(50), "
                    + "username VARCHAR(50) UNIQUE, "
                    + "email VARCHAR(50), "
                    + "password VARCHAR(255)"
                    + ")";
            statement.executeUpdate(createUsersTable);
            System.out.println("*users* Table Created Successfully.....");

            // Create user_addresses table
            String createUserAddressesTable = "CREATE TABLE IF NOT EXISTS user_addresses ("
                    + "id INT PRIMARY KEY AUTO_INCREMENT, "
                    + "username VARCHAR(50), "
                    + "house_number VARCHAR(20), "
                    + "area VARCHAR(50), "
                    + "landmark VARCHAR(50), "
                    + "town VARCHAR(50), "
                    + "city VARCHAR(50), "
                    + "state VARCHAR(50), "
                    + "country VARCHAR(50), "
                    + "pincode VARCHAR(10), "
                    + "created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, "
                    + "updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"
                    + ")";
            statement.executeUpdate(createUserAddressesTable);
            System.out.println("*user_addresses* Table Created Successfully.....");

            // Create user_profiles table
            String createUserProfilesTable = "CREATE TABLE IF NOT EXISTS user_profiles ("
                    + "username VARCHAR(50) PRIMARY KEY, "
                    + "full_name VARCHAR(50), "
                    + "email VARCHAR(50), "
                    + "mobile VARCHAR(20), "
                    + "created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, "
                    + "updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"
                    + ")";
            statement.executeUpdate(createUserProfilesTable);
            System.out.println("*user_profiles* Table Created Successfully.....");

            System.out.println("Database and tables created successfully.");
            statement.close();
            connection.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
