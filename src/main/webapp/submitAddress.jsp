<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="database.DatabaseConnection" %> <!-- Import your DatabaseConnection class -->
<!DOCTYPE html>
<html>
<head>
    <title>Address Creation</title>
</head>
<body>
<%
    // Retrieve form parameters
    String username = request.getParameter("username");
    String houseNumber = request.getParameter("house_number");
    String area = request.getParameter("area");
    String landmark = request.getParameter("landmark");
    String town = request.getParameter("town");
    String city = request.getParameter("city");
    String state = request.getParameter("state");
    String country = request.getParameter("country");
    String pincode = request.getParameter("pincode");

    // Initialize database connection variables
    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        conn = DatabaseConnection.getConnection();

        // Insert new address
        String insertQuery = "INSERT INTO user_addresses (username, house_number, area, landmark, town, city, state, country, pincode) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(insertQuery);
        pstmt.setString(1, username);
        pstmt.setString(2, houseNumber);
        pstmt.setString(3, area);
        pstmt.setString(4, landmark);
        pstmt.setString(5, town);
        pstmt.setString(6, city);
        pstmt.setString(7, state);
        pstmt.setString(8, country);
        pstmt.setString(9, pincode);

        int rowsInserted = pstmt.executeUpdate();

        if (rowsInserted > 0) {
            out.println("<h1>Address Created Successfully!</h1>");
        } else {
            out.println("<h1>Error Creating Address. Please try again.</h1>");
        }
    } catch (SQLException e) {
        e.printStackTrace();
        out.println("<h1>Database Error. Please try again later.</h1>");
    } finally {
        try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>

<a href="profile.jsp">Go back to Profile</a>

</body>
</html>
