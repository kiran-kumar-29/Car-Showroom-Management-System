<%@ page language="java" contentType="image/png" pageEncoding="UTF-8"%>
<%@ page import="java.awt.*, java.awt.image.*, javax.imageio.*" %>
<%@ page import="java.util.Random" %>

<%
    // Generate random CAPTCHA code
    String captchaCode = String.valueOf(new Random().nextInt(9999));
    // Store the code in session for verification
    session.setAttribute("captcha_code", captchaCode);
    
    // Create a BufferedImage
    BufferedImage bufferedImage = new BufferedImage(100, 40, BufferedImage.TYPE_INT_RGB);
    Graphics2D g2d = bufferedImage.createGraphics();
    g2d.setColor(Color.BLACK);
    g2d.fillRect(0, 0, 100, 40);
    g2d.setColor(Color.WHITE);
    g2d.drawString(captchaCode, 20, 25);
    g2d.dispose();
    
    // Write the image to the response
    response.setContentType("image/png");
    ImageIO.write(bufferedImage, "png", response.getOutputStream());
%>
