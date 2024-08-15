<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Arial', sans-serif;
}

body {
    background-color: #f0f0f0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    flex-direction: column;
}

.navbar {
    width: 100%;
    background-color: #333;
    padding: 15px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.navbar .logo {
    color: #fff;
    font-size: 1.5em;
    text-decoration: none;
}

.navbar .nav-links a {
    color: #fff;
    text-decoration: none;
    font-size: 1em;
    margin-left: 20px;
    padding: 8px 15px;
    background-color: #555;
    border-radius: 5px;
}

.navbar .nav-links a:hover {
    background-color: #777;
}

.login-container {
    background-color: #fff;
    padding: 40px 60px;
    border-radius: 10px;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
    text-align: center;
}

.login-container h2 {
    margin-bottom: 20px;
    color: #333;
}

.input-group {
    margin-bottom: 20px;
    text-align: left;
}

.input-group label {
    display: block;
    font-size: 1em;
    color: #333;
    margin-bottom: 5px;
}

.input-group input {
    width: 100%;
    padding: 10px;
    font-size: 1em;
    border: 1px solid #ccc;
    border-radius: 5px;
}

.login-btn {
    width: 100%;
    padding: 10px;
    background-color: #5cb85c;
    border: none;
    color: white;
    font-size: 1.2em;
    border-radius: 5px;
    cursor: pointer;
}

.login-btn:hover {
    background-color: #4cae4c;
}

.signup-link {
    margin-top: 20px;
    font-size: 0.9em;
    color: #666;
}

.signup-link a {
    color: #5cb85c;
    text-decoration: none;
}

.signup-link a:hover {
    text-decoration: underline;
}


</style>


<body>


 <nav>
        <div class="navbar">
            <a href="#" class="logo">MyWebsite</a>
            <div class="nav-links">
                <a href="create.jsp" class="create-account">Create Account</a>
            </div>
        </div>
    </nav>

    <div class="login-container">
        <h2>Login</h2>
        <form action="login" method="post">
            <div class="input-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit" class="login-btn">Login</button>
        </form>
        <p class="signup-link">Don't have an account? <a href="create.jsp">Click here to sign up</a></p>
    </div>





</body>
</html>