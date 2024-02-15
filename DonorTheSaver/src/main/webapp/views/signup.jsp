<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Theme - User Registration</title>
    <!-- Include jQuery -->
   <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <!-- Include jQuery UI for date picker -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
     <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #ffffff; /* Blood-themed background color */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff; /* White text color for better readability on a dark background */
        }

        .container {
            width: 80%;
            max-width: 400px;
            background-color: #fcfcfc; /* Darker red for the container */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            box-sizing: border-box;
        }

        .Registration-Form {
            display: flex;
            flex-direction: column;
            gap: 2px; /* Adjusted gap between form elements */
        }

        .form-group {
            margin-bottom: 10px; /* Adjusted margin between form groups */
        }

        label {
            font-size: 16px;
            color: #000000; /* White text color */
        }

        input {
            padding: 12px;
            border-radius: 4px;
            border: 1px solid #ccc;
            font-size: 16px;
            width: 100%;
            box-sizing: border-box;
            background-color: #fff; /* White input background */
            color: #333; /* Dark text color for input fields */
        }

        input[type="radio"] {
            margin-right: 5px;
        }

      #signupButton {
    background-color: #800000;
    color: white;
    padding: 12px;
    border: none;
    border-radius: 4px;
    font-size: 18px;
    cursor: pointer;
    position: relative;
    transition: background-color 0.3s ease;
    width: 100%; /* Add this line to set a fixed width */
    display: flex; /* Add this line */
}

#signupButtonText,
#signupButtonSpinner {
    flex: 1; /* Add this line to distribute space evenly */
}


        #signupButton:disabled {
            background-color: #ccc;
            cursor: not-allowed;
        }

        #signupButton:hover {
            background-color: #ff5252; /* Lighter red on hover */
        }

        #signupButtonSpinner {
            display: none;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
        }

        .existing-mobile {
            color: #ff0000; /* Bright red for existing mobile message */
            font-size: 14px;
            margin-top: 5px;
            display: none;
        }

        .password-strength {
            margin-top: 5px;
            font-size: 14px;
        }

        /* Custom style for radio buttons */
        .gender-radio-group {
            display: flex;
            gap: 10px;
        }

        .gender-radio-group label {
            display: flex;
            align-items: center;
        }

        .gender-radio-group input {
            margin-right: 5px;
        }

        .mobile-number-container {
            display: flex;
            align-items: center;
        }

        #getOtpButton {
            margin-left: 10px; /* Adjust the margin as needed */
        }
    </style>
</head>
<body>

    <div class="container">
        <form class="Registration-Form" onsubmit="return validateForm()" action="/save" method="POST">
            <div class="form-group">
                <label for="firstName">First Name:</label>
                <input type="text" name="firstName" id="firstName" placeholder="Enter your First Name" required>
            </div>

            <div class="form-group">
                <label for="lastName">Last Name:</label>
                <input type="text" name="lastName" id="lastName" placeholder="Enter your Last Name" required>
            </div>

            <div class="form-group">
                <label for="dateOfBirth">Date of Birth:</label>
                <input type="date" name="dateOfBirth" id="dateOfBirth" placeholder="Select date" required>
            </div>

            <div class="form-group">
                <label>Gender:</label>
                <div class="gender-radio-group">
                    <label><input type="radio" name="gender" value="male" required> Male</label>
                    <label><input type="radio" name="gender" value="female" required> Female</label>
                    <label><input type="radio" name="gender" value="other" required> Other</label>
                </div>
            </div>

            <div class="form-group">
                <label for="mobileNumber">Mobile Number:</label>
                <div class="mobile-number-container">
                    <input type="text" name="mobileNumber" id="mobileNumber" placeholder="Enter your Mobile Number" required
                           oninput="validateMobileInput(this.value)">
                    <button type="button" id="getOtpButton" onclick="generateOTP()">Get OTP</button>
                </div>
                <div id="otpBox" style="display: none;">
                    <label for="otp">Enter OTP:</label>
                    <input type="text" name="otp" id="otp" placeholder="Enter OTP" required>
                </div>
                <div id="existingMobile" class="existing-mobile">Mobile number already exists!</div>
                <div id="invalidMobile" class="existing-mobile">Invalid mobile number! Must be 10 digits.</div>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" name="email" id="email" placeholder="Enter your Email" required>
            </div>

          <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" name="password" id="password" placeholder="Enter your Password" required oninput="validatePasswordStrength(this.value)">
                <div class="password-strength" id="passwordStrength"></div>
            </div>

            <div class="form-group">
                <label for="confirmPassword">Confirm Password:</label>
                <input type="password" name="confirmPassword" id="confirmPassword" placeholder="Confirm your Password" required oninput="validateConfirmPassword(this.value)">
                <div id="passwordMismatch" class="existing-mobile">Passwords do not match!</div>
            </div>
            
            <button type="submit" id="signupButton" disabled>
                <span id="signupButtonText">Sign Up</span>
                <span id="signupButtonSpinner">Sign Up</span>
            </button>
        </form>
    </div>

    <script>
       function validateMobileInput(mobileNumber) {
        const invalidMobileDiv = $('#invalidMobile');
        const mobileRegex = /^\d{10}$/; // Regular expression for exactly 10 digits

        if (!mobileRegex.test(mobileNumber)) {
            invalidMobileDiv.show();
            return false;
        } else {
            invalidMobileDiv.hide();
        }

        // Call the asynchronous function to check if the mobile number exists
        checkMobileInDatabaseAsync(mobileNumber);
    }

    async function checkMobileInDatabaseAsync(mobileNumber) {
        try {
            const response = await $.ajax({
                type: "GET",
                url: "/checkMobile",  // Update the URL as per your mapping
                data: {mobileNumber: mobileNumber},
                dataType: "json"
            });

            const existingMobileDiv = $('#existingMobile');
            const signupButton = $('#signupButton');
            const signupButtonText = $('#signupButtonText');
            const signupButtonSpinner = $('#signupButtonSpinner');
            const getOtpButton = $('#getOtpButton');
            const otpBox = $('#otpBox');

            if (response.exists) {
                existingMobileDiv.show();
                signupButton.prop('disabled', true);
                getOtpButton.prop('disabled', true);
            } else {
                existingMobileDiv.hide();
                signupButton.prop('disabled', false);
                getOtpButton.prop('disabled', false);
            }

            // If the mobile number is valid, show the OTP box
            if (validateMobileInput(mobileNumber)) {
                otpBox.show();
            } else {
                otpBox.hide();
            }

        } catch (error) {
            console.error("Error checking mobile number:", error);
        }
    }

    function validateForm() {
        const isMobileValid = validateMobileInput($('#mobileNumber').val());
        const isPasswordValid = validatePassword() && validateConfirmPassword();

        // Validate OTP only if the OTP box is visible
        const isOtpValid = $('#otpBox').is(':visible') ? validateOtp() : true;

        return isMobileValid && isPasswordValid && isOtpValid;
    }

    function generateOTP() {
        // Implement OTP generation logic here and send it to the user's mobile number
        // For the sake of example, we'll just enable the OTP input field
        $('#otpBox').show();
    }

    function validateOtp() {
        // Implement OTP validation logic here
        // For the sake of example, we'll just check if the OTP field is not empty
        const otp = $('#otp').val();
        return otp.trim() !== '';
    }
        function validateForm() {
            const isMobileValid = validateMobileInput($('#mobileNumber').val());
            const isPasswordValid = validatePassword() && validateConfirmPassword();

            return isMobileValid && isPasswordValid;
        }

        function validatePassword() {
            const password = $('#password').val();
            return password.length >= 8; // Simple check for minimum length
        }

        function validateConfirmPassword(confirmPassword) {
            const password = $('#password').val();
            const passwordMismatchDiv = $('#passwordMismatch');

            if (password !== confirmPassword) {
                passwordMismatchDiv.show();
                $('#signupButton').prop('disabled', true);
                return false;
            } else {
                passwordMismatchDiv.hide();
                // Enable/disable the signup button based on password validity
                const isPasswordValid = validatePasswordStrength(password);
                $('#signupButton').prop('disabled', !isPasswordValid);
                return true;
            }
        }

        function validatePasswordStrength(password) {
            const passwordStrengthDiv = $('#passwordStrength');
            const strength = calculatePasswordStrength(password);

            if (strength === 'Weak') {
                passwordStrengthDiv.html("<span style='color: red;'>Password Strength: Weak. Minimum length should be 8 characters.</span>");
                return false;
            } 
        }

        function calculatePasswordStrength(password) {
            // Implement your password strength calculation logic here
            // This is a simple example; you can use external libraries for more sophisticated checks
            const length = password.length;
            if (length < 8) {
                return 'Weak';
            } else {
                return 'Strong';
            }
        }


        $(function () {
            // Use jQuery UI datepicker for the date of birth field
            $("#dateOfBirth").datepicker({
                dateFormat: "yy-mm-dd",
                changeMonth: true,
                changeYear: true,
                yearRange: "-100:+0" // Adjust the range as needed
            });
        });

    </script>

</body>
</html>