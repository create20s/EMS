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

.create-account-container {
    background-color: #fff;
    padding: 40px 60px;
    border-radius: 10px;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
    text-align: center;
}

.create-account-container h2 {
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

.create-account-btn {
    width: 100%;
    padding: 10px;
    background-color: #5cb85c;
    border: none;
    color: white;
    font-size: 1.2em;
    border-radius: 5px;
    cursor: pointer;
}

.create-account-btn:hover {
    background-color: #4cae4c;
}

.signin-link {
    margin-top: 20px;
    font-size: 0.9em;
    color: #666;
}

.signin-link a {
    color: #5cb85c;
    text-decoration: none;
}

.signin-link a:hover {
    text-decoration: underline;
}


</style>
<body>
<h1>Enter details</h1>



<!-- <form action="registration" method="post">

<input type="text" name="id" placeholder="enter id">
<input type="text" name="name" placeholder="enter name">
<input type="text" name="email" placeholder="enter email">
<input type="text" name="password" placeholder="enter password">
<input type="text" name="sal" placeholder="enter salary">

<button type="submit">add data</button>

</form>
 -->

<!--trying  -->



 <nav>
        <div class="navbar">
            <a href="#" class="logo">MyWebsite</a>
            <div class="nav-links">
                <a href="index.jsp" class="login">Login</a>
            </div>
        </div>
    </nav>

    <div class="create-account-container">
        <h2>Create Account</h2>
        <form action="registration" method="post">
            <div class="input-group">
                <label for="id">ID</label>
                <input type="text"  name="id" placeholder="enter id" required >
            </div>
            <div class="input-group">
                <label for="name">Name</label>
               <input type="text" name="name" placeholder="enter name" required>
            </div>
            <div class="input-group">
                <label for="email">email</label>
                <input type="text" name="email" placeholder="enter email" required>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
               <input type="text" name="password" placeholder="enter password">
            </div>
            <div class="input-group">
                <label for="salary">Salary</label>
                <input type="text" name="sal" placeholder="enter salary">
            </div>
           
            <button type="submit" class="create-account-btn">Create Account</button>
        </form>
        <p class="signin-link">Already have an account? <a href="index.jsp">Click here to sign in</a></p>
    </div>



</body>
</html>