<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>CHS Database</title>
        <link rel="stylesheet" type="text/css" href="style.css">
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
        <h1 id="title">Charleston Historical Society Database Viewer</h1>
        <h3 id="names">Clayton Turner and Parker Bednar</h3>
        <p id="form">
        	<textarea id="sqlta" rows="8" cols="50" name="sql" form="sqlform">Enter SQL here</textarea>
        	<div id="form">
        		<form method="post" id="sqlform">
        			<input type="submit" value="Query">
        		</form>
        	</div>
        	
	        <?php 
	        function injection_defense($statement){
	        	$retval = true;
	        	/* lowercase and pop semi-colon */
	        	$statement = trim(strtolower($statement),";");
	        	$split = explode(" ",$statement);
	        	$first = trim($split[0]);
	        	/* Deliberate altering query */
	        	if($first == "drop" || $first == "insert" || $first == "update" || $first == "delete")
	        		$retval = false;
	        	/* Tautology */
	        	/* Doesn't work for ... OR 'x'= 'x', but
	        	can be extrapolated if needed to take to the web */
	        	elseif(preg_match('/=/',$statement)){
	        		/* if we can just use spacing */
	        		if(preg_match('/ = /',$statement)){ 
	        			//$pos = strpos($split,'=');
	        			$pos = array_search('=',$split);
	        			if($split[$pos-1] == $split[$pos+1])
	        				$retval = false;
	        		}
	        		/*elseif(preg_match('/= /')){

	        		}
	        		elseif(preg_match('/ =/')){

	        		}*/
	        		else{ /* our values are pushed against it */
	        			foreach($split as &$val){
	        				if(preg_match('/=/',$val)){
	        					$checker = explode('=',$val);
	        					if(count($checker) == 2){
	        						if(trim($checker[0]) == trim($checker[1]))
	        							$retval = false;
	        					}
	        					
	        				}
	        			}
	        		} 
	        	}
	        	/* Return SQL injection ?(not) detected */
	        	return $retval;
	        }
	        if(!empty($_POST["sql"])){
				$sql = trim($_POST["sql"]);
	        	if(injection_defense($sql)){
					$result = mysqli_query($conn,$sql);
					$cols = array();
					while($property = mysqli_fetch_field($result)){
						array_push($cols, $property->name);
					}
					while($row = $result->fetch_assoc()) {
						for($i=0; $i<count($cols); $i++)
							echo $cols[$i] . ": " . $row[$cols[$i]] . "<br>";
						echo "<br>";
					}
					mysqli_free_result($result);
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