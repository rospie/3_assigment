<!doctype html>
<html>
    <head>
    <meta charset="UTF-8">
    <title>Delete Client</title>
    </head>
<body>
    <?php
    
    $cid = filter_input(INPUT_POST, 'cid', FILTER_VALIDATE_INT) or die('Missing/illegal parameter');

    require_once 'dbcon.php';

    $sql = 'DELETE FROM clients WHERE `ClientsID`=?';
    $stmt = $link->prepare($sql);
    $stmt->bind_param('i', $cid);
    $stmt->execute();

    if ($stmt->affected_rows >0 ){
	   echo 'Client deleted from list';
    }

    else {
	   echo 'No client deleted';
        //	echo $stmt->error;
    }
    ?>

    <hr>

    <a href="client_list.php">Back to Client List</a><br>
</body>
</html>