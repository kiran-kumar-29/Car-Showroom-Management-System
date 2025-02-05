<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="database.DatabaseConnection" %> <!-- Import your DatabaseConnection class -->
<!DOCTYPE html>
<html>
<head>
    <title>Order Receipt</title>
    <link rel="stylesheet" type="text/css" href="css/processOrder.css"> <!-- Link to external CSS file -->
    <script>
        function printReceipt() {
            window.print();
        }
    </script>
</head>
<body>
<%
    // Get form data
    String carBrand = request.getParameter("car_brand");
    String brandModel = request.getParameter("brand_model");
    String buyerName = request.getParameter("buyer_name");
    String buyerEmail = request.getParameter("buyer_email");
    String mobileNumber = request.getParameter("mobile_number");
    String deliveryAddress = request.getParameter("delivery_address");
    String orderDate = request.getParameter("order_date");
    String deliveryDate = request.getParameter("delivery_date");
    String color = request.getParameter("color");
    String interiorColor = request.getParameter("interior_color");
    String alloyColor = request.getParameter("alloy_color");
    String extraWheels = request.getParameter("extra_wheels");
    String topType = request.getParameter("top_type");
    String sunRoof = request.getParameter("sun_roof");
    String steeringWheel = request.getParameter("steering_wheel");
    String leatherInterior = request.getParameter("leather_interior");
    String bodyKitNeeded = request.getParameter("body_kit_needed");
    String rearWingNeeded = request.getParameter("rear_wing_needed");
    String rearWingType = request.getParameter("rear_wing_type");
    String rearWingColor = request.getParameter("rear_wing_color");
    String carbonFiberNeeded = request.getParameter("carbon_fiber_needed");
    String carbonFiberLocation = request.getParameter("carbon_fiber_location");
    String captchaInput = request.getParameter("captcha");

    // Get CAPTCHA code from session
    String captchaCode = (String) session.getAttribute("captcha_code");

    // Check if CAPTCHA matches
    if (captchaInput != null && captchaInput.equals(captchaCode)) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // Use DatabaseConnection to get the connection
            conn = DatabaseConnection.getConnection();

            // Prepare SQL insert statement with an auto-generated orderId
            String sql = "INSERT INTO car_orders (car_brand, brand_model, buyer_name, buyer_email, mobile_number, delivery_address, order_date, delivery_date, color, interior_color, alloy_color, extra_wheels, top_type, sun_roof, steering_wheel, leather_interior, body_kit_needed, rear_wing_needed, rear_wing_type, rear_wing_color, carbon_fiber_needed, carbon_fiber_location) "
                       + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pstmt.setString(1, carBrand);
            pstmt.setString(2, brandModel);
            pstmt.setString(3, buyerName);
            pstmt.setString(4, buyerEmail);
            pstmt.setString(5, mobileNumber);
            pstmt.setString(6, deliveryAddress);
            pstmt.setString(7, orderDate);
            pstmt.setString(8, deliveryDate);
            pstmt.setString(9, color);
            pstmt.setString(10, interiorColor);
            pstmt.setString(11, alloyColor);
            pstmt.setInt(12, Integer.parseInt(extraWheels));
            pstmt.setString(13, topType);
            pstmt.setString(14, sunRoof);
            pstmt.setString(15, steeringWheel);
            pstmt.setString(16, leatherInterior);
            pstmt.setString(17, bodyKitNeeded);
            pstmt.setString(18, rearWingNeeded);
            pstmt.setString(19, rearWingType);
            pstmt.setString(20, rearWingColor);
            pstmt.setString(21, carbonFiberNeeded);
            pstmt.setString(22, carbonFiberLocation);

            // Execute the insert statement
            int rowsInserted = pstmt.executeUpdate();

            // Retrieve generated orderId
            ResultSet generatedKeys = pstmt.getGeneratedKeys();
            int orderId = 0;
            if (generatedKeys.next()) {
                orderId = generatedKeys.getInt(1);
            }

            if (rowsInserted > 0) {
                out.println("<div class='receipt'>");
                out.println("<h2>Order Submitted Successfully</h2>");
                out.println("<p><strong>Order ID:</strong> " + orderId + "</p>");
                out.println("<button onclick='printReceipt()'>Print Receipt</button>");
                out.println("<ul>");
                out.println("<li><span class='label'>Car Brand:</span> <span class='value'>" + carBrand + "</span></li>");
                out.println("<li><span class='label'>Brand Model:</span> <span class='value'>" + brandModel + "</span></li>");
                out.println("<li><span class='label'>Buyer Name:</span> <span class='value'>" + buyerName + "</span></li>");
                out.println("<li><span class='label'>Buyer Email:</span> <span class='value'>" + buyerEmail + "</span></li>");
                out.println("<li><span class='label'>Mobile Number:</span> <span class='value'>" + mobileNumber + "</span></li>");
                out.println("<li><span class='label'>Delivery Address:</span> <span class='value'>" + deliveryAddress + "</span></li>");
                out.println("<li><span class='label'>Order Date:</span> <span class='value'>" + orderDate + "</span></li>");
                out.println("<li><span class='label'>Delivery Date:</span> <span class='value'>" + deliveryDate + "</span></li>");
                out.println("<li><span class='label'>Color:</span> <span class='value'>" + color + "</span></li>");
                out.println("<li><span class='label'>Interior Color:</span> <span class='value'>" + interiorColor + "</span></li>");
                out.println("<li><span class='label'>Alloy Color:</span> <span class='value'>" + alloyColor + "</span></li>");
                out.println("<li><span class='label'>Extra Wheels:</span> <span class='value'>" + extraWheels + "</span></li>");
                out.println("<li><span class='label'>Top Type:</span> <span class='value'>" + topType + "</span></li>");
                out.println("<li><span class='label'>Sun Roof:</span> <span class='value'>" + sunRoof + "</span></li>");
                out.println("<li><span class='label'>Steering Wheel:</span> <span class='value'>" + steeringWheel + "</span></li>");
                out.println("<li><span class='label'>Leather Interior:</span> <span class='value'>" + leatherInterior + "</span></li>");
                out.println("<li><span class='label'>Body Kit Needed:</span> <span class='value'>" + bodyKitNeeded + "</span></li>");
                out.println("<li><span class='label'>Rear Wing Needed:</span> <span class='value'>" + rearWingNeeded + "</span></li>");
                out.println("<li><span class='label'>Rear Wing Type:</span> <span class='value'>" + rearWingType + "</span></li>");
                out.println("<li><span class='label'>Rear Wing Color:</span> <span class='value'>" + rearWingColor + "</span></li>");
                out.println("<li><span class='label'>Carbon Fiber Needed:</span> <span class='value'>" + carbonFiberNeeded + "</span></li>");
                out.println("<li><span class='label'>Carbon Fiber Location:</span> <span class='value'>" + carbonFiberLocation + "</span></li>");

                out.println("</ul>");
                out.println("</div>");
            } else {
                out.println("<h2>Failed to place the order. Please try again.</h2>");
            }

        } catch (SQLException e) {
            e.printStackTrace(); // This will print to the server log
            out.println("<h2>Error while processing the order: " + e.getMessage() + "</h2>"); // Show the error on the page
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    } else {
        out.println("<h2>Invalid CAPTCHA. Please try again.</h2>");
    }
%>
</body>
</html>
