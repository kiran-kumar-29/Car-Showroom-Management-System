<%@ page import="java.sql.*, database.DatabaseConnection" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <title>Login Page</title>
</head>
<body onload="animateForm()">
    <div class="login-container">
        <h2>Login Page</h2>
        <form action="login.jsp" method="post">
            <input type="text" name="username" placeholder="Username" required><br>
            <input type="password" name="password" placeholder="Password" required><br>
            <input type="submit" value="Login">
        </form>

        <% 
            if (request.getMethod().equalsIgnoreCase("POST")) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");

                Connection con = null;
                PreparedStatement ps = null;
                ResultSet rs = null;

                try {
                    // Use DatabaseConnection class to get a connection
                    con = DatabaseConnection.getConnection();
                    ps = con.prepareStatement("SELECT * FROM users WHERE username=? AND password=?");
                    ps.setString(1, username);
                    ps.setString(2, password);
                    rs = ps.executeQuery();

                    if (rs.next()) {
                        session.setAttribute("userId", rs.getInt("id"));
                        session.setAttribute("username", rs.getString("username"));
                        response.sendRedirect(request.getContextPath() + "/profile.jsp");
                    } else {
                        out.println("<p style='color:red;'>Invalid username or password. Please try again.</p>");
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
                    if (ps != null) try { ps.close(); } catch (SQLException ignore) {}
                    if (con != null) try { con.close(); } catch (SQLException ignore) {}
                }
            }
        %>

        <!-- Register link -->
        <p>Don't have an account? <a href="register.jsp">Register here</a></p>
    </div>
</body>
</html>
