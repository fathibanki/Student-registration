<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login Page</title>
</head>

<body>
    <form action="php/login_db.php" method="post">
        <div>
            <label>Username</label>
            <input type="text" name="username" placeholder="Username">
        </div>
        <br>
        <div>
            <label>Password</label>
            <input type="password" name="password" placeholder="Password">
        </div>
        <br>
        <a href="createAccount.php">Create Account</a>
        <input type="submit" value="Login">
    </form>
    <?php
    session_start();
    if (isset($_SESSION['no_connection'])) {
        unset($_SESSION['no_connection']);
        echo "Database Error";
    }
    ?>
</body>

</html>