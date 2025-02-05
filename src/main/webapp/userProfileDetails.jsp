<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="database.DatabaseConnection" %> <!-- Import your DatabaseConnection class -->
<!DOCTYPE html>
<html>
<head>
    <title>User Profile Details</title>
    <link rel="stylesheet" type="text/css" href="css/profile.css"> <!-- Link to external CSS file -->
</head>
<body>
    <h1>User Profile Details</h1>
    <%
        // Get the username from the request
        String username = request.getParameter("username");
        if (username == null || username.isEmpty()) {
            out.println("<p>No user found.</p>");
            return;
        }

        Connection conn = null;
        PreparedStatement psProfile = null;
        PreparedStatement psAddress = null;
        ResultSet rsProfile = null;
        ResultSet rsAddress = null;

        try {
            // Establish the database connection
            conn = DatabaseConnection.getConnection();

            // Fetch user profile details
            String queryProfile = "SELECT full_name, email, mobile FROM user_profiles WHERE username = ?";
            psProfile = conn.prepareStatement(queryProfile);
            psProfile.setString(1, username);
            rsProfile = psProfile.executeQuery();

            if (rsProfile.next()) {
                String fullName = rsProfile.getString("full_name");
                String email = rsProfile.getString("email");
                String mobile = rsProfile.getString("mobile");

                // Display user profile details
                out.println("<h2>Profile Information</h2>");
                out.println("<p>Full Name: " + fullName + "</p>");
                out.println("<p>Email: " + email + "</p>");
                out.println("<p>Mobile: " + mobile + "</p>");
            } else {
                out.println("<p>User profile not found.</p>");
            }

            // Fetch user address details
            String queryAddress = "SELECT house_number, area, landmark, town, city, state, country, pincode FROM user_addresses WHERE username = ?";
            psAddress = conn.prepareStatement(queryAddress);
            psAddress.setString(1, username);
            rsAddress = psAddress.executeQuery();

            if (rsAddress.next()) {
                // Display address details
                out.println("<h2>Address Information</h2>");
                out.println("<p>House Number: " + rsAddress.getString("house_number") + "</p>");
                out.println("<p>Area: " + rsAddress.getString("area") + "</p>");
                out.println("<p>Landmark: " + rsAddress.getString("landmark") + "</p>");
                out.println("<p>Town: " + rsAddress.getString("town") + "</p>");
                out.println("<p>City: " + rsAddress.getString("city") + "</p>");
                out.println("<p>State: " + rsAddress.getString("state") + "</p>");
                out.println("<p>Country: " + rsAddress.getString("country") + "</p>");
                out.println("<p>Pincode: " + rsAddress.getString("pincode") + "</p>");
            } else {
                out.println("<p>User address not found.</p>");
            }

        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<p>Error retrieving user details.</p>");
        } finally {
            // Close resources
            try {
                if (rsProfile != null) rsProfile.close();
                if (rsAddress != null) rsAddress.close();
                if (psProfile != null) psProfile.close();
                if (psAddress != null) psAddress.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    %>
</body>
</html>
