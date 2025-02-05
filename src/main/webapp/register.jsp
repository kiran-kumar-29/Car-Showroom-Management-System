<%@ page import="java.sql.*" %>
<%@ page import="database.DatabaseConnection" %> <!-- Import your DatabaseConnection class -->
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/register.css">
    <title>Register</title>
</head>
<body onload="animateForm()">
    <div class="register-container">
        <h2>Register</h2>
        <form action="register.jsp" method="post">
            <input type="text" name="fullname" placeholder="Full Name" required><br>
            <input type="text" name="username" placeholder="Username" required><br>
            <input type="email" name="email" placeholder="Email" required><br>
            <input type="password" name="password" placeholder="Password" required><br>
            <input type="password" name="confirm_password" placeholder="Confirm Password" required><br>
            <input type="submit" value="Register">
        </form>

        <%
            if (request.getMethod().equalsIgnoreCase("POST")) {
                String fullname = request.getParameter("fullname");
                String username = request.getParameter("username");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String confirmPassword = request.getParameter("confirm_password");

                // Check if passwords match
                if (!password.equals(confirmPassword)) {
                    out.println("<p style='color:red;'>Passwords do not match.</p>");
                } else {
                    Connection con = null;
                    PreparedStatement ps = null;

                    try {
                        // Use DatabaseConnection to get the connection
                        con = DatabaseConnection.getConnection(); 
                        ps = con.prepareStatement("INSERT INTO users (full_name, username, email, password) VALUES (?, ?, ?, ?)");
                        ps.setString(1, fullname);
                        ps.setString(2, username);
                        ps.setString(3, email);
                        ps.setString(4, password);

                        int result = ps.executeUpdate();
                        if (result > 0) {
                            response.sendRedirect("login.jsp");
                        } else {
                            out.println("<p style='color:red;'>Registration failed. Please try again.</p>");
                        }
                    } catch (SQLException e) {
                        out.println("<p style='color:red;'>Database error: " + e.getMessage() + "</p>");
                    } finally {
                        // Close resources
                        if (ps != null) {
                            try { ps.close(); } catch (SQLException e) { e.printStackTrace(); }
                        }
                        if (con != null) {
                            try { con.close(); } catch (SQLException e) { e.printStackTrace(); }
                        }
                    }
                }
            }
        %>
        <p>Already have an account? <a href="login.jsp">login here</a></p>
    </div>
</body>
</html>
