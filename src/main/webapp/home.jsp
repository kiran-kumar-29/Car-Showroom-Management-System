<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Car Showroom Home</title>
</head>
<body>
    <h1>Welcome to the Car Showroom</h1>
    
    <h2>Cars</h2>
    <div id="carSection">
        <!-- Details of cars will be displayed here -->
    </div>
    
    <h2>Bikes</h2>
    <div id="bikeSection">
        <!-- Details of bikes will be displayed here -->
    </div>
    
    <h3>Buy a Car</h3>
    <form action="BuyCarServlet" method="post">
        Car ID: <input type="text" name="carId" required /><br>
        Car Name: <input type="text" name="carName" required /><br>
        Car Brand: <input type="text" name="carBrand" required /><br>
        <input type="submit" value="Buy Car" />
    </form>
    
    <h3>Delivery Address</h3>
    <form action="DeliveryAddressServlet" method="post">
        House Number: <input type="text" name="houseNumber" required /><br>
        Street: <input type="text" name="street" required /><br>
        State: <input type="text" name="state" required /><br>
        Country: <input type="text" name="country" required /><br>
        Pincode: <input type="text" name="pincode" required /><br>
        <input type="submit" value="Submit Address" />
    </form>
</body>
</html>
