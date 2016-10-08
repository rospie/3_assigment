<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Client List</title>
    </head>

<body>
    <h1>Clients:</h1>
    <ul>
        <?php
        
        require_once 'dbcon.php';
        
        $sql = 'SELECT Client_Name, ClientsID FROM Clients';
        $stmt = $link->prepare($sql);
        $stmt->execute();
        $stmt->bind_result($cname, $cid);

        while($stmt->fetch()){
	       echo '<li><a href="client_info.php?id='.$cid.'">'.$cname.'</a></li>'.PHP_EOL;
        }
        ?>
    </ul>

<form method="post" action="add_client.php">
	New Name: <input type="text" name="clname" placeholder="New Name"/>
    New address: <input type="text" name="claddress" placeholder="New adress"/>
    New nub: <input type="text" name="clnumb" placeholder="New number"/>
    New conname: <input type="text" name="clconname" placeholder="New conname"/>
    New zip: <input type="text" name="clzip" placeholder="New zip"/>
    <input type="submit" name="action" value="Add to client" />
</form>

<h2>DELETE CLIENT</h2>
 <form action="delete_client.php" method="post">
 <select name="cid">
		<?php
		$sql = 'Select Client_Name, `ClientsID` from Clients;';
   		$stmt = $link->prepare($sql);
    	$stmt->execute();
    	$stmt->bind_result($clname, $cid);
    while ($stmt->fetch()){
   echo '<option value="'.$cid.'" placeholder="Zip">'.$clname.'</option>'.PHP_EOL;
	}
 ?>
 <input type="submit" value="Delete">
 </select>
 </form>


</body>
</html>