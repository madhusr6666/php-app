<!DOCTYPE html>
<html>
<head>
    <title>PHP Form</title>
</head>
<body>
    <h1>PHP Form</h1>
    <form action="submit.php" method="post">
        <label for="name">Name:</label>
        <input type="text" name="name" id="name" required><br><br>
        
        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required><br><br>
        
        <input type="submit" value="Submit">
    </form>
</body>
</html>
