<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="database.DatabaseConnection" %> <!-- Import your DatabaseConnection class -->
<!DOCTYPE html>
<html>
<head>
    <title>User Profile</title>
    <link rel="stylesheet" type="text/css" href="css/profile.css"> <!-- Link to external CSS file -->
    <script>
        // JavaScript function to cancel order
        function cancelOrder(orderId) {
            if (confirm("Are you sure you want to cancel your order?")) {
                // Use AJAX to send the orderId to cancelOrder.jsp
                var xhr = new XMLHttpRequest();
                xhr.open("POST", "cancelOrder.jsp", true);
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.onreadystatechange = function() {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        // Handle response (could be a success or error message)
                        alert(xhr.responseText);
                    }
                };
                // Send orderId to the backend for processing
                xhr.send("orderId=" + orderId);
            }
        }
    </script>
</head>
<body>

    <!-- Navigation Bar -->
    <div class="navbar">
        <ul>
            <li><a href="userProfileDetails.jsp">Display Details</a></li>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="buyCar.jsp">Buy Car</a></li>
        </ul>
    </div>

    <h1>User Profile</h1>

    <%
        // Retrieve the username from session
        String username = (String) session.getAttribute("username");

        // Initialize database connection variables
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        // Initialize variables to hold user profile and address details
        String fullName = "";
        String email = "";
        String mobile = "";
        String houseNumber = "";
        String area = "";
        String landmark = "";
        String town = "";
        String city = "";
        String state = "";
        String country = "";
        String pincode = "";

        try {
            conn = DatabaseConnection.getConnection();

            // Retrieve user profile information
            String profileQuery = "SELECT full_name, email, mobile FROM user_profiles WHERE username = ?";
            pstmt = conn.prepareStatement(profileQuery);
            pstmt.setString(1, username);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                fullName = rs.getString("full_name");
                email = rs.getString("email");
                mobile = rs.getString("mobile");
            }

            // Retrieve user address information
            String addressQuery = "SELECT house_number, area, landmark, town, city, state, country, pincode FROM user_addresses WHERE username = ?";
            pstmt = conn.prepareStatement(addressQuery);
            pstmt.setString(1, username);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                houseNumber = rs.getString("house_number");
                area = rs.getString("area");
                landmark = rs.getString("landmark");
                town = rs.getString("town");
                city = rs.getString("city");
                state = rs.getString("state");
                country = rs.getString("country");
                pincode = rs.getString("pincode");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    %>

    <!-- Personal Information Section -->
    <h2>Personal Information</h2>
    <form action="submitProfile.jsp" method="post">
        <label for="fullName">Full Name:</label>
        <input type="text" id="fullName" name="full_name" value="<%= fullName %>" required><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="<%= email %>" required><br>

        <label for="mobile">Mobile Number:</label>
        <input type="text" id="mobile" name="mobile" value="<%= mobile %>" required><br>

        <input type="hidden" name="username" value="<%= username %>"> <!-- Hidden field for username -->
        <input type="submit" value="Submit">
        <input type="button" value="Update" onclick="updateProfile()">
    </form>

    <!-- Address Information Section -->
    <h2>Address Information</h2>
    <form action="submitAddress.jsp" method="post">
        <label for="houseNumber">House Number:</label>
        <input type="text" id="houseNumber" name="house_number" value="<%= houseNumber %>" required><br>

        <label for="area">Area:</label>
        <input type="text" id="area" name="area" value="<%= area %>" required><br>

        <label for="landmark">Landmark:</label>
        <input type="text" id="landmark" name="landmark" value="<%= landmark %>"><br>

        <label for="town">Town:</label>
        <input type="text" id="town" name="town" value="<%= town %>" required><br>

        <label for="city">City:</label>
        <input type="text" id="city" name="city" value="<%= city %>" required><br>

        <label for="state">State:</label>
        <input type="text" id="state" name="state" value="<%= state %>" required><br>

        <label for="country">Country:</label>
        <input type="text" id="country" name="country" value="<%= country %>" required><br>

        <label for="pincode">Pincode:</label>
        <input type="text" id="pincode" name="pincode" value="<%= pincode %>" required><br>

        <input type="hidden" name="username" value="<%= username %>"> <!-- Hidden field for username -->
        <input type="submit" value="Submit">
        <input type="button" value="Update" onclick="updateAddress()">
    </form>

    <!-- Button to View User Profile Details -->
    <h2>View Profile Details</h2>
    <form action="userProfileDetails.jsp" method="get">
        <input type="hidden" name="username" value="${sessionScope.username}"> <!-- Assuming you store the username in session -->
        <input type="submit" value="View Details">
    </form>

    <!-- Cancel Order Section -->
    <h2>Cancel Order</h2>
    <!-- Example Order ID (you would dynamically generate this based on your application) -->
    <button onclick="cancelOrder('1')">Cancel Order</button>

</body>
</html>
