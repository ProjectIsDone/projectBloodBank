<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Bank Registration</title>
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

        .registration-form {
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

        .error-message {
            color: #e74c3c; /* Red color for error messages */
            margin-top: 5px;
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
    </style>
</head>
<body>

    <div class="left-half">
        <!-- Removed the h2 element -->
    </div>

    <div class="right-half">
        <div class="registration-form">
            <form id="registrationForm" onsubmit="return validateForm()">
                <div class="form-group">
                    <label for="bloodBankName">Blood Bank Name:</label>
                    <input type="text" id="bloodBankName" name="bloodBankName" placeholder="Enter blood bank name" required>
                </div>

                <div class="form-group">
                    <label for="mobileNumber">Mobile Number:</label>
                    <input type="tel" id="mobileNumber" name="mobileNumber" placeholder="Enter mobile number" required>
                    <div id="mobileNumberError" class="error-message"></div>
                </div>

                <div class="form-group">
                    <label for="address">Address:</label>
                    <input type="text" id="address" name="address" placeholder="Choose address from Google Maps" required>
                </div>

                <div class="form-group">
                    <button type="submit">Register</button>
                </div>
            </form>
        </div>
    </div>

    <script>
        // Function to handle form submission
        function validateForm() {
            // Validate mobile number length
            var mobileNumberInput = document.getElementById("mobileNumber");
            var mobileNumber = mobileNumberInput.value;
            var mobileNumberError = document.getElementById("mobileNumberError");

            if (mobileNumber.length !== 10) {
                mobileNumberError.textContent = "Mobile number must be 10 digits long.";
                return false;
            } else {
                mobileNumberError.textContent = ""; // Clear error message if valid
            }

            // Get the entered address
            var addressInput = document.getElementById("address");
            var enteredAddress = addressInput.value;

            // Create Google Maps link and redirect
            var googleMapsLink = "https://www.google.com/maps/search/?api=1&query=" + encodeURIComponent(enteredAddress);
            window.location.href = googleMapsLink;

            return false; // Prevent form submission for testing purposes
        }
    </script>
</body>
</html>
