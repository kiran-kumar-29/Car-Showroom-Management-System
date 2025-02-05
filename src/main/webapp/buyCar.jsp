<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Buy Car</title>
    <link rel="stylesheet" type="text/css" href="css/buyCar.css">
</head>
<body>
    <div class="container">
        <h2>Buy a Car</h2>
        
        <form action="processOrder.jsp" method="post">
        <!-- Car Details Section -->
            <div class="section" id="car-details">
                <h3>Car Details</h3>

                <div class="form-group">
                    <label for="car_brand">Car Brand:</label>
                    <input type="text" id="car_brand" name="car_brand" required>
                </div>

                <div class="form-group">
                    <label for="brand_model">Brand Model:</label>
                    <input type="text" id="brand_model" name="brand_model" required>
                </div>
            </div>
            
            
            <!-- User Information Section -->
            <div class="section" id="user-information">
                <h3>Your Information</h3>
                
                <div class="form-group">
                    <label for="buyer_name">Your Name:</label>
                    <input type="text" id="buyer_name" name="buyer_name" required>
                </div>

                <div class="form-group">
                    <label for="buyer_email">Your Email:</label>
                    <input type="email" id="buyer_email" name="buyer_email" required>
                </div>

                <div class="form-group">
                    <label for="mobile_number">Mobile Number:</label>
                    <input type="text" id="mobile_number" name="mobile_number" required>
                </div>

                <div class="form-group">
                    <label for="delivery_address">Delivery Address:</label>
                    <textarea id="delivery_address" name="delivery_address" required></textarea>
                </div>

                <div class="form-group">
                    <label for="order_date">Order Date:</label>
                    <input type="date" id="order_date" name="order_date" 
                           value="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>" required readonly>
                </div>

                <div class="form-group">
                    <label for="delivery_date">Delivery Date:</label>
                    <input type="date" id="delivery_date" name="delivery_date" required>
                </div>
            </div>

            <!-- Car Modifications Section -->
            <div class="section" id="car-modifications">
                <h3>Car Modifications</h3>

                <div class="form-group">
                    <label for="color">Color:</label>
                    <input type="text" id="color" name="color" required>
                </div>

                <div class="form-group">
                    <label for="interior_color">Interior Color:</label>
                    <input type="text" id="interior_color" name="interior_color" required>
                </div>

                <div class="form-group">
                    <label for="alloy_color">Alloy Color:</label>
                    <input type="text" id="alloy_color" name="alloy_color" required>
                </div>

                <div class="form-group">
                    <label for="extra_wheels">How many extra wheels needed:</label>
                    <input type="number" id="extra_wheels" name="extra_wheels" min="0">
                </div>

                <div class="form-group">
                    <label for="top_type">Open Top or Closed Top:</label>
                    <select id="top_type" name="top_type" required>
                        <option value="Open">Open</option>
                        <option value="Closed">Closed</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="sun_roof">Sun Roof:</label>
                    <select id="sun_roof" name="sun_roof" required>
                        <option value="Yes">Yes</option>
                        <option value="No">No</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="steering_wheel">Steering Wheel Type:</label>
                    <select id="steering_wheel" name="steering_wheel" required>
                        <option value="Default">Default</option>
                        <option value="Sport">Sport</option>
                        <option value="Normal">Normal</option>
                        <option value="Racing">Racing</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="leather_interior">Interior Type:</label>
                    <select id="leather_interior" name="leather_interior" required>
                        <option value="Default">Default</option>
                        <option value="Leather">Leather</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="body_kit_needed">Any Body Kit Needed:</label>
                    <input type="text" id="body_kit_needed" name="body_kit_needed" placeholder="e.g., Sport Body Kit">
                </div>

                <div class="form-group">
                    <label for="rear_wing_needed">Rear Wing Needed:</label>
                    <select id="rear_wing_needed" name="rear_wing_needed" required>
                        <option value="No">No</option>
                        <option value="Yes">Yes</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="rear_wing_type">If Yes, specify Type:</label>
                    <input type="text" id="rear_wing_type" name="rear_wing_type" placeholder="Type of Rear Wing">
                </div>

                <div class="form-group">
                    <label for="rear_wing_color">Rear Wing Color:</label>
                    <input type="text" id="rear_wing_color" name="rear_wing_color">
                </div>

                <div class="form-group">
                    <label for="carbon_fiber_needed">Use Carbon Fiber?</label>
                    <select id="carbon_fiber_needed" name="carbon_fiber_needed" required>
                        <option value="No">No</option>
                        <option value="Yes">Yes</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="carbon_fiber_location">If Yes, specify where:</label>
                    <input type="text" id="carbon_fiber_location" name="carbon_fiber_location" placeholder="Location for Carbon Fiber">
                </div>
            </div>

            <!-- CAPTCHA Section -->
            <div class="section" id="captcha-verification">
                <h3>Captcha Verification</h3>
                <label for="captcha">Please enter the code shown below:</label><br>
                <img src="captcha_image.jsp" alt="CAPTCHA Image"><br>
                <input type="text" id="captcha" name="captcha" required>
            </div>

            <button type="submit">Place Order</button>

        </form>
    </div>
</body>
</html>
