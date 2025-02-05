<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="database.DatabaseConnection" %> <!-- Import your DatabaseConnection class -->
<!DOCTYPE html>
<html>
<head>
    <title>Profile Creation</title>
</head>
<body>
<%
    // Retrieve form parameters
    String username = request.getParameter("username");
    String fullName = request.getParameter("full_name");
    String email = request.getParameter("email");
    String mobile = request.getParameter("mobile");

    // Initialize database connection variables
    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        conn = DatabaseConnection.getConnection();

        // Insert user profile information
        String insertQuery = "INSERT INTO user_profiles (username, full_name, email, mobile) VALUES (?, ?, ?, ?)";
        pstmt = conn.prepareStatement(insertQuery);
        pstmt.setString(1, username);
        pstmt.setString(2, fullName);
        pstmt.setString(3, email);
        pstmt.setString(4, mobile);

        int rowsInserted = pstmt.executeUpdate();

        if (rowsInserted > 0) {
            out.println("<h1>Profile Created Successfully!</h1>");
        } else {
            out.println("<h1>Error Creating Profile. Please try again.</h1>");
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
