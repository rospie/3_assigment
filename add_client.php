<!doctype html>
<html>
    <head>
    <meta charset="UTF-8">
        <title>Add New Client</title>
    </head>

<body>

    <?php
    
    $clname = filter_input(INPUT_POST, 'clname') or die('missing parameter');
    $claddress = filter_input(INPUT_POST, 'claddress') or die('missing parameter');
    $clnumb = filter_input(INPUT_POST, 'clnumb', FILTER_VALIDATE_INT) or die('missing parameter');
    $clconname = filter_input(INPUT_POST, 'clconname') or die('missing parameter');
    $clzip = filter_input(INPUT_POST, 'clzip', FILTER_VALIDATE_INT) or die('missing parameter');

    require_once 'dbcon.php';

    $sql = 'INSERT INTO `Clients`(`Client_Name`, `Client_Address`, `Client_Contact_Number`, `Clients_Contacts_Name`, `Zip_Code_Zip_Code`) VALUES (?, ?, ?, ?, ?);';
    $stmt = $link->prepare($sql);
    $stmt->bind_param('ssisi', $clname, $claddress, $clnumb, $clconname, $clzip);
    $stmt->execute();
    
    ?>

    <p>Client added to DB</p>

<a href="client_list.php">Back to Client List</a> 



</body>
</html>