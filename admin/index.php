<!DOCTYPE html>
<html lang="en">
<?php include("../connection/connect.php");
session_start();
if (isset($_POST['submit'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    if (!empty($username) && !empty($password)) {
        $loginquery = "SELECT * FROM admin WHERE username = ?";
        $stmt = $db->prepare($loginquery);
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $result = $stmt->get_result();
        $row = $result->fetch_assoc();
        if ($row) {
            if (password_verify($password, $row['password'])) {
                $_SESSION["adm_id"] = $row['adm_id'];
                header("refresh:1;url=dashboard.php");
                $stmt->close();
            } else {
                echo "<script>alert('Invalid Password!');</script>";
            }
        } else {
            echo "<script>alert('Invalid Username!');</script>";
        }
    } else {
        echo "<script>alert('Please fill in all fields!');</script>";
    }
} ?>

<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'>
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Montserrat:400,700'>
    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

    <link rel="stylesheet" href="css/login.css">


</head>

<body>

    <div class="container">
        <div class="info">
            <h1>Admin</h1>
        </div>
    </div>
    <div class="form">
        <div class="thumbnail"><img src="images/manager.png" /></div>
        <form class="login-form" action="index.php" method="post">
            <input type="text" placeholder="Username" name="username" />
            <input type="password" placeholder="Password" name="password" />
            <input type="submit" name="submit" value="Login" />

        </form>
    </div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src='js/index.js'></script>
</body>

</html>