<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Client Information</title>
    </head>

<body>

        <?php
        $cid = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT) or die('missing parameter');
            echo $cid;
    ?>

    <h1>Details for client with ID <?=$cid?>:</h1>
    <ul>
        <?php
    
        require_once 'dbcon.php';
        
        $sql = 'SELECT Client_Name, Client_Contact_Number FROM Clients where ClientsID=?';

        $stmt = $link->prepare($sql);
        $stmt->bind_param('i', $cid);
        $stmt->execute();
        $stmt->bind_result($clname, $clcontact);

        while($stmt->fetch()){
	       echo '<li><a href="filmdetails.php">'.$clname.' '.$clcontact.'</a></li>';
                
        }
        
        ?>
    </ul>




</body>
</html>