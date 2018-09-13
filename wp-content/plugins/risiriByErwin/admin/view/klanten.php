<?php
/**
 * Created by PhpStorm.
 * User: Erwin Jobse
 * Date: 9/12/2018
 * Time: 1:58 PM
 */
?>
<html>
<h1>klanten</h1>

<?php

global $wpdb;





$table = 'risiri_klanten';

$user = $wpdb->get_results( "SELECT * FROM $table" );

// Delete logic
if (isset($_POST['action']) && $_POST['action'] == 'deleteEntry') {
    $id = isset($_POST['id']) ? intval($_POST['id']) : 0;
    var_dump($id);

    if ($id > 0) {
        $wpdb->delete( $tabel, array( 'klantnummer' => $id ) );

        echo 'ok';
    } else {
        echo 'err';
    }
    exit; // finish execution since we only need the "ok" or "err" answers from the server.
}

?>
<table border="1">
<tr>
    <th>Klantnummer</th>
    <th>Naam</th>
    <th>TussenVoegsel</th>
    <th>Achternaam</th>
    <th>Email</th>
    <th></th>


</tr>

<?php
 foreach ($user as $row){ ?>
     <tr>
         <td><?php echo $row->klantnummer;?></td>
         <td><?php echo $row->voorNaam;?></td>
         <td><?php echo $row->Tussenvoegsel;?></td>
         <td><?php echo $row->Achternaam;?></td>
         <td><?php echo $row->email;?></td>
         <td><button class="deletedata" data-id="<?php echo $row->klantnummer;?>">Verwijder</button></td>

     </tr>


<?php }

?>



