<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/register.css">
    <title>User Registration</title>

    <script>
        function validateForm() {
            var password = document.forms["registrationForm"]["password"].value;
            var confirmPassword = document.forms["registrationForm"]["confirmPassword"].value;
            var email = document.forms["registrationForm"]["email"].value;
            var mobile = document.forms["registrationForm"]["mobile"].value;

            // Check if passwords match
            if (password !== confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }

            // Check email format
            if (!email.includes("@")) {
                alert("Please enter a valid email address.");
                return false;
            }

            // Check mobile number length
            if (mobile.length !== 10 || isNaN(mobile)) {
                alert("Mobile number must be 10 digits.");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
    <h2>Register</h2>
    <form name="registrationForm" action="RegisterServlet" method="post" onsubmit="return validateForm()">
        Username: <input type="text" name="username" required /><br>
        Full Name: <input type="text" name="fullName" required /><br>
        Phone Number: <input type="tel" name="mobile" required /><br>
        Email ID: <input type="email" name="email" required /><br>
        Password: <input type="password" name="password" required /><br>
        Confirm Password: <input type="password" name="confirmPassword" required /><br>
        <input type="submit" value="Register" />
    </form>
</body>
</html>
