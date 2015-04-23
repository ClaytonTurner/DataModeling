<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>CHS Database</title>
        <?php 
        $servername = "localhost";
        $username = "root";
        $db = "schs";
        // Open connection
        $conn = mysqli_connect($servername, $username, NULL, $db);
        // Check connection
		if ($conn->connect_error) {
		    die("Connection failed: " . $conn->connect_error);
		}
		
		?>
    </head>
    <body>
        <h1>Charleston Historical Society Database Viewer</h1>
        <p>
        	<form method="post">
        	SQL Query: <input type="text" name="sql"><br>
        	<input type="submit" value="Query">
        	</form>
	        <?php 
	        if(!empty($_POST["sql"])){
				$sql = $_POST["sql"];
				$result = $conn->query($sql);

				if ($result->num_rows > 0) {
			    // output data of each row
				    while($row = $result->fetch_assoc()) {
				        echo "Name: " . $row["firstName"]. " " . $row["lastName"]. "<br>","Address: ", $row["address"], ", ", $row["city"],", ",$row["state"],", ",$row["zip"],"<br>","Phone: ", $row["phone"], ", ",$row["email"],"<br><br>";
				    }
				} else {
				    echo "No results for query";
				}
			}
			else{
				echo "Post is empty";
			}
			$conn->close();
	        ?>
        </p>
    </body>
</html>