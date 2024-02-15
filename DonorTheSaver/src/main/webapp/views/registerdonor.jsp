<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donor Registration Form</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        form {
            background-color: #ff5252;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: white;
        }

        input, select {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        .form-group {
            display: flex;
            gap: 10px;
        }

        button {
            padding: 10px;
            background-color: white;
            color: #ff5252;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #ff8080;
        }

        .error {
            color: white;
            margin-top: 5px;
        }
    </style>
</head>
<body>

    <form id="donorForm" onsubmit="validateForm(event)" action="/savedonor" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="age">Age:</label>
        <input type="number" id="age" name="age" required>

        <label for="weight">Weight:</label>
        <input type="number" id="weight" name="weight" required>

        <label for="bloodGroup">Blood Group:</label>
        <select id="bloodGroup" name="bloodGroup" required>
            <option value="Select">Select</option>
            <option value="A+">A+</option>
            <option value="A-">A-</option>
            <option value="B+">B+</option>
            <option value="B-">B-</option>
            <option value="AB+">AB+</option>
            <option value="AB-">AB-</option>
            <option value="O+">O+</option>
            <option value="O-">O-</option>
        </select>

        <div class="form-group">
            <div>
                <label for="state">State:</label>
                <select id="state" name="state" required>
                    <option value="Andhra Pradesh">Andhra Pradesh</option>
                    <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                    <option value="Assam">Assam</option>
                    <option value="Bihar">Bihar</option>
                    <option value="Chhattisgarh">Chhattisgarh</option>
                    <option value="Goa">Goa</option>
                    <option value="Gujarat">Gujarat</option>
                    <option value="Haryana">Haryana</option>
                    <option value="Himachal Pradesh">Himachal Pradesh</option>
                    <option value="Jharkhand">Jharkhand</option>
                    <option value="Karnataka">Karnataka</option>
                    <option value="Kerala">Kerala</option>
                    <option value="Madhya Pradesh">Madhya Pradesh</option>
                    <option value="Maharashtra">Maharashtra</option>
                    <option value="Manipur">Manipur</option>
                    <option value="Meghalaya">Meghalaya</option>
                    <option value="Mizoram">Mizoram</option>
                    <option value="Nagaland">Nagaland</option>
                    <option value="Odisha">Odisha</option>
                    <option value="Punjab">Punjab</option>
                    <option value="Rajasthan">Rajasthan</option>
                    <option value="Sikkim">Sikkim</option>
                    <option value="Tamil Nadu">Tamil Nadu</option>
                    <option value="Telangana">Telangana</option>
                    <option value="Tripura">Tripura</option>
                    <option value="Uttar Pradesh">Uttar Pradesh</option>
                    <option value="Uttarakhand">Uttarakhand</option>
                    <option value="West Bengal">West Bengal</option>
                </select>
            </div>
            <div>
                <label for="district">District:</label>
                <input type="text" id="district" name="district" required>
            </div>
        </div>

        <label for="area">Area:</label>
        <input type="text" id="area" name="area" required>

        <label for="mobileNumber">Mobile Number:</label>
        <input type="tel" id="mobileNumber" name="mobileNumber" required>

        <input type="submit" value="register"/>

        <p class="error" id="errorMessage"></p>
    </form>

    <script>
    function validateForm(event) {
        var age = document.getElementById("age").value;
        var weight = document.getElementById("weight").value;
        var mobileNumber = document.getElementById("mobileNumber").value;
        var errorMessage = document.getElementById("errorMessage");

        if (age < 18 || age > 65) {
            errorMessage.textContent = "Age should be between 18 and 65.";
            event.preventDefault(); // Prevent form submission if validation fails
            return;
        }

        if (weight <= 45) {
            errorMessage.textContent = "Weight should be greater than 45.";
            event.preventDefault(); // Prevent form submission if validation fails
            return;
        }

        // Validate mobile number to have exactly 10 digits
        if (!/^\d{10}$/.test(mobileNumber)) {
            errorMessage.textContent = "Mobile number should have exactly 10 digits.";
            event.preventDefault(); // Prevent form submission if validation fails
            return;
        }

        // If all validation passes, form will be submitted
    }
</script>


</body>
</html>