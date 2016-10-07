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
	       echo '<li><a href="client_info.php?id=?'.$cid.'">'.$cname.'</a></li>'.PHP_EOL;
        }
        ?>
    </ul>




</body>
</html>