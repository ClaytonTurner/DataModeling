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
	        function injection_defense($statement){
	        	$retval = true;
	        	$statement = strtolower($statement);
	        	$split = explode(" ",$statement);
	        	$first = trim($split[0]);
	        	if($first == "drop" || $first == "insert" || $first == "update")
	        		$retval = false;
	        	return $retval;
	        }
	        if(!empty($_POST["sql"])){
				$sql = trim($_POST["sql"]);
	        	if(injection_defense($sql)){
					$result = mysqli_query($conn,$sql);
					$cols = array();
					while($property = mysqli_fetch_field($result)){
						//echo $property->name;
						array_push($cols, $property->name);
					}
					while($row = $result->fetch_assoc()) {
						for($i=0; $i<count($cols); $i++)
							echo $cols[$i] . ": " . $row[$cols[$i]] . "<br>";
						echo "<br>";
					}
					mysqli_free_result($result);
					/*
					if ($result->num_rows > 0) {
				    // output data of each row
					    //while($row = $result->fetch_assoc()) {
					    //    echo "Name: " . $row["firstName"]. " " . $row["lastName"]. "<br>","Address: ", $row["address"], ", ", $row["city"],", ",$row["state"],", ",$row["zip"],"<br>","Phone: ", $row["phone"], ", ",$row["email"],"<br><br>";
					    //}
					} else {
					    echo "No results for query";
					}*/
				}
				else{
					echo "SQL Injection attempt detected";
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