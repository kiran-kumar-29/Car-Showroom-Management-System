<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, database.DatabaseConnection" %>
<%
    // Get the orderId from the request
    String orderId = request.getParameter("orderId");

    // Check if orderId is provided
    if (orderId != null && !orderId.isEmpty()) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        String cancelOrderQuery = "UPDATE orders SET status = 'canceled' WHERE orderId = ?";

        try {
            conn = DatabaseConnection.getConnection();
            pstmt = conn.prepareStatement(cancelOrderQuery);
            pstmt.setString(1, orderId);

            int rowsUpdated = pstmt.executeUpdate();

            if (rowsUpdated > 0) {
                // Successfully canceled the order
                out.println("Order with ID " + orderId + " has been successfully canceled.");
            } else {
                // If no rows were updated (order ID not found)
                out.println("Failed to cancel the order. Please check the order ID.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("An error occurred while canceling the order: " + e.getMessage());
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    } else {
        out.println("No order ID provided.");
    }
%>
