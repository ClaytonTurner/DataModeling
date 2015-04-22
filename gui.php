<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>CHS Database</title>
        <?php 
        // Open connection
        $con = mysql_connect("localhost","root","admin");
        if(!$con)
            die("Error, couldn't connect: " . mysql_error());
        ?>
    </head>
    <body>
        <h1>Charleston Historical Society Database Viewer</h1>
        <p>
            
        </p>
    </body>
</html>