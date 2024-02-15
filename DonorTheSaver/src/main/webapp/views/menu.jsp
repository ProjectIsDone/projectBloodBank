 <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Help & FAQ</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f8f8;
            color: #333;
        }

        #top-bar {
            background-color: #f44336;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
        }

        #menu-toggle {
            cursor: pointer;
            padding: 10px;
            color: white;
     …
[2:34 PM, 2/4/2024] Venky Satya: HelpAndFAQ.jsp
[2:35 PM, 2/4/2024] Venky Satya: <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Enhanced App</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f5f5;
        }

        #top-bar {
            background-color: #ff5252;
            color: white;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
        }

        #profile-details {
            display: flex;
            align-items: center;
        }

        #profile-details img {
            border-radius: 50%;
            margin-right: 15px;
            width: 120px;
            height: 120px;
            border: 3px solid #fff;
            cursor: pointer;
            transition: all 0.3s;
        }

        #profile-details img:hover {
            width: 200px;
            height: 200px;
        }

        #profile-details img.modal-photo {
            width: 250px;
            height: 250px;
            cursor: default;
            transition: all 0.3s;
        }

        #profile-details img.modal-photo:hover {
            width: 250px;
            height: 250px;
        }

        #profile-info {
            text-align: left;
        }

        #profile-info h1 {
            font-size: 28px;
            margin: 0;
            padding: 0;
            color: #fff;
        }

        #profile-info p {
            font-size: 18px;
            margin: 5px 0;
            padding: 0;
            color: #eee;
        }

        #user-info {
            text-align: right;
            font-size: 18px;
            font-family: 'Cinzel', serif;
        }

        #menu {
            position: fixed;
            width: 250px;
            background-color: #ff5252;
            padding-top: 20px;
            height: 100%;
            color: white;
            overflow-y: auto;
            box-shadow: 3px 0px 10px rgba(0, 0, 0, 0.1);
            z-index: 1;
            transition: width 0.5s;
        }

        #menu a {
            display: block;
            padding: 15px;
            color: white;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        #menu a:hover {
            background-color: #f44336;
        }

        #content {
            margin-left: 250px;
            padding: 20px;
            transition: margin-left 0.5s;
        }

        @media screen and (max-width: 600px) {
            #menu {
                width: 100%;
            }

            #content {
                margin-left: 0;
            }
        }

        #menu-toggle {
            cursor: pointer;
            padding: 10px;
            position: fixed;
            top: 20px;
            left: 20px;
            z-index: 2;
            color: #fff;
            font-size: 20px;
            display: none;
        }

        #menu-toggle:hover {
            color: #ddd;
        }

        /* Profile Modal Styling */
        #profile-modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
        }

        #modal-content {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            text-align: center;
        }

        #close-modal {
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
            font-size: 18px;
        }
    </style>
</head>

<body>
    <div id="top-bar">
        <div id="profile-details">
            <!-- Replace the placeholder URL with your default image URL or local path -->
            <img src="https://via.placeholder.com/120" alt="Profile Photo" onclick="openProfileModal()">
            <div id="profile-info">
                <h1>Venkatesh Bheemanaboina</h1>
                <p>B positive (B+)</p>
            </div>
        </div>
        <div id="user-info">
            <span>User ID: 123456</span>
        </div>
    </div>

    <div id="menu">
        <a href="#">Profile</a>
        <a href="#">Education & Awareness</a>
        <a href="#">Activities</a>
        <a href="#">Settings</a>
        <a href="#">Invite</a>
        <a href="#">About</a>
        <a href="#">Help & FAQ</a>
        <a href="#">Logout</a>
    </div>

    <div id="menu-toggle">&#9776; Menu</div>

    <div id="content">
        <h1>Welcome to Your Enhanced App</h1>
        <p>This is the main content area. Feel free to add your content here.</p>
    </div>

    <!-- Profile Modal -->
    <div id="profile-modal" onclick="closeProfileModal()">
        <div id="modal-content">
            <span id="close-modal" onclick="closeProfileModal()">&times;</span>
            <img src="https://via.placeholder.com/250" alt="Profile Photo" class="modal-photo">
        </div>
    </div>

    <script>
        document.getElementById('menu-toggle').addEventListener('click', function () {
            toggleMenu();
        });

        function toggleMenu() {
            const menu = document.getElementById('menu');
            const content = document.getElementById('content');
            const menuToggle = document.getElementById('menu-toggle');
            if (menu.style.width === '250px') {
                menu.style.width = '0';
                content.style.marginLeft = '0';
                menuToggle.innerHTML = '&#9776; Menu';
            } else {
                menu.style.width = '250px';
                content.style.marginLeft = '250px';
                menuToggle.innerHTML = '&times; Close';
            }
        }

        function openProfileModal() {
            document.getElementById('profile-modal').style.display = 'flex';
        }

        function closeProfileModal() {
            document.getElementById('profile-modal').style.display = 'none';
        }

        // Initial check for display on page load
        if (window.innerWidth <= 600) {
            document.getElementById('menu-toggle').style.display = 'block';
        }
    </script>
</body>

</html>