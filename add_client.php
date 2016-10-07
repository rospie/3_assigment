<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Untitled Document</title>
    </head>

<body>
    <?php
        $cid = filter_input(INPUT_POST, 'cid', FILTER_VALIDATE_INT) or die('Missing/illegal parameter');
        $fid = filter_input(INPUT_POST, 'clcontact', FILTER_VALIDATE_INT) or die('Missing/illegal parameter');
    
        require_once 'dbcon.php';

        $sql = 'INSERT INTO Clients (ClientID, Client_Contact) VALUES (?, ?)';
        $stmt = $link->prepare($sql);
        $stmt->bind_param('ii', $cid, $clcontact);
        $stmt->execute();

        if ($stmt->affected_rows >0 ){
	       echo 'Client added to the database';
        }
        else {
	       echo 'No change - client allready present in database';
            //	echo $stmt->error;
        }
    ?>
    <hr>
    <a href="client_info.php.php?fid=<?=$fid?>">Film details</a><br>
    <a href="client_list.php.php?cid=<?=$cid?>">Films in same category</a><br>

</body>
</html>