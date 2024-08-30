<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <script src="js/scripts.js"></script>
</head>
<body>
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="products.jsp">Products</a>
        <a href="contact.jsp">Contact Us</a>
        <a href="login.jsp">Login</a>
    </div>
    <div class="container">
        <div class="form-container">
            <h2>Login</h2>
            <form name="loginForm" action="login" method="post" onsubmit="return validateForm()">
                Username: <input type="text" name="username" required><br>
                Password: <input type="password" name="password" required><br>
                <button type="submit">Login</button>
            </form>
        </div>
    </div>
</body>
</html>
