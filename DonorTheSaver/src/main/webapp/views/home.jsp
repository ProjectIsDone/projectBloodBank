<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-xQeI5TqUIw3PMdSbWgDg+D2F6k6fQgYY1m0hKijjJc8w2iiw+l4cFZ4ZDPXmxPkX1wmpc+pBlq6p84knHcm+dQ==" crossorigin="anonymous" />

    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
            color: #333;
        }

        header h1 {
            font-size: 2em;
            color: #1565c0;
            margin: 0;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #ff5252;
            padding: 15px 20px;
        }

        .main-container {
            display: grid;
            grid-template-columns: 1fr 1fr; /* Updated to two equal halves */
            min-height: 100vh;
        }

        .subsection {
            padding: 30px;
            border: 1px solid #ccc;
        }

        .subsection1 {
            background-color: #ff5252;
            color: #fff;
        }

        .subsection2 {
            background-color: #fff;
            color: #333;
        }

        .links {
            display: flex;
            align-items: center;
        }

        .links a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
            padding: 10px;
            margin-right: 10px;
            transition: color 0.3s, background-color 0.3s;
            border-radius: 5px;
        }

        .links hr {
            border: 0.5px solid #ffffff;
            margin: 0 10px;
            height: 15px;
        }

        .links a:hover {
            color: #2196F3;
            background-color: #fff;
        }

        .menu-icon {
            font-size: 1.5em;
            cursor: pointer;
            color: #fff;
        }

        @media screen and (max-width: 768px) {
            .main-container {
                grid-template-columns: 1fr;
            }

            .links {
                display: none;
                flex-direction: column;
                width: 100%;
                position: absolute;
                top: 60px;
                left: 0;
                background-color: #1565c0;
                z-index: 1;
            }

            .links.show {
                display: flex;
            }

            .links a, .menu-icon {
                width: 100%;
                text-align: center;
            }
        }
    </style>
    <title>Blood Donation Home Page</title>
</head>
<body>
    <form action="#search">
    <div class="main-container">
        <div class="subsection subsection1"></div>
        <div class="subsection subsection2">
            <header>
                <h1>🩸 Donor</h1>
            </header>
            <nav>
                <div class="links">
                    <a href="/home">Home</a>
                    <hr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/register">Register</a>
                    <hr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/search">Search</a>
                    <hr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/updates">Updates</a>
                    <hr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
                <a href="/menu"><div class="menu-icon">&#9776;</div></a>
            </nav>
            <p class="line-spaced-text"></p>
        </div>
    </div>
</form>
</body>
</html>