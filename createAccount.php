<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Create Account</title>
</head>

<body>
    <form method="post" action="create_db.php">
        <div>
            <label>First Name</label>
            <input type="text" name="fname" placeholder="First Name">
        </div><br>
        <div>
            <label>Last Name</label>
            <input type="text" name="lname" placeholder="Last Name">
        </div><br>
        <div>
            <label>UserName</label>
            <input type="text" name="username" placeholder="UserName">
        </div><br>
        <div>
            <label>email</label>
            <input type="email" name="email" placeholder="enter email">
        </div><br>
        <div>
            <label>phone number</label>
            <input type="text" name="phone" placeholder="enter phone number">
        </div><br>

        <div>
            <label>Password</label>
            <input type="password" name="password" placeholder="Password">
        </div><br>
        <input type="submit" value="Register" name="submit">
    </form>



</body>

</html>