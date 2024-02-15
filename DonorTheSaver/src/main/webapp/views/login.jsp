<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            display: flex;
            height: 100vh;
        }

        .left-half {
            flex: 1;
            background-color: #e74c3c; /* Red background color */
            color: #fff; /* White text color */
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .right-half {
            flex: 1;
            background-color: #fff; /* White background color */
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .login-form {
            width: 300px;
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }

        .form-group button {
            width: 100%;
            padding: 10px;
            background-color: #e74c3c; /* Red button color */
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .form-group a {
            display: block;
            margin-top: 10px;
            text-decoration: none;
            color: #333;
        }
    </style>
</head>
<body>

    <div class="left-half">
        <p id="quote" style="text-align: center;"></p>
    </div>

    <div class="right-half">
        <div class="login-form">
            <h2>Login</h2>
            <form id="loginForm" onsubmit="return validateForm()" action="/logindetails" method="post">
                <div class="form-group">
                    <label for="emailOrPhone">Email or Phone Number:</label>
                    <input type="text" id="emailOrPhone" name="mobileNumber" required>
                </div>

                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>

                <div class="form-group">
                    <button type="submit">Login</button>
                </div>

                <div class="form-group">
                    <a href="#">Forgot Password?</a>
                </div>

                <hr>

                <div class="form-group">
                    <button type="button" onclick="createAccount()">Create New Account</button>
                </div>
            </form>
        </div>
    </div>

    <script>
        // Array of quotes about blood
        var bloodQuotes = [
            "Blood is the life-maintaining fluid that circulates through the body.",
            "The gift of blood is the gift of life.",
            "Donating blood is a simple way to save a life.",
            "Your blood can save lives; be a hero, donate blood.",
            "Blood makes you related, but loyalty makes you family."
        ];

        var quoteElement = document.getElementById("quote");
        var quoteIndex = 0;

        // Function to update the quote
        function updateQuote() {
            quoteElement.textContent = bloodQuotes[quoteIndex];
            quoteIndex = (quoteIndex + 1) % bloodQuotes.length; // Move to the next quote
        }

        // Set initial quote
        updateQuote();

        // Automatically update the quote every 5 seconds (5000 milliseconds)
        var quoteInterval = setInterval(updateQuote, 5000);

        // Function to stop the quote sliding when the login form is submitted
        function stopQuoteSliding() {
            clearInterval(quoteInterval);
        }

        // Function to resume quote sliding when the login form is closed or user navigates away
        function resumeQuoteSliding() {
            quoteInterval = setInterval(updateQuote, 5000);
        }

        // Function to handle form submission
        function validateForm() {
            // Your validation logic here

            // Stop quote sliding when the form is submitted
            stopQuoteSliding();

            return true; // or false based on your validation
        }

        // Function to handle new account creation
        function createAccount() {
            // Your logic for new account creation

            // Redirect to the "signup.jsp" page
            window.location.href = '/'; // Update the URL accordingly

            // Resume quote sliding after the new account is created
            resumeQuoteSliding();
        }
    </script>

</body>
</html>