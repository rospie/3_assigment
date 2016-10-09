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
	       echo '<li>Name '.$clname.'</a></li>';
            echo '<li>Contact number: '.$clcontact.'</li>';
                
        }
        
        ?>
    </ul>
    
    <h1>Project</h1>
    <ul>
       <?php
        require_once 'dbcon.php';
        
        $sql = 'SELECT project_name, project_description, project_start_date, project_end_date FROM projects where projectID=?';

        $stmt = $link->prepare($sql);
        $stmt->bind_param('i', $cid);
        $stmt->execute();
        $stmt->bind_result($pname, $pdesc, $pstart, $pend);

        while($stmt->fetch()){
	       echo '<li>Project Name: '.$pname.'</li>';
            echo '<li>Description: '.$pdesc.'</li>';
            echo '<li>Start: '.$pstart.'</li>';
            echo '<li>End: '.$pend.'</li>';
                
        }
        
        ?>
    </ul>


</body>
</html>