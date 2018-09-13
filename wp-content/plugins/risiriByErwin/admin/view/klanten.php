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

$table_name = $wpdb->prefix . 'risiri_klanten';

$user = $wpdb->get_results( "SELECT * FROM risiri_klanten" );

// Delete logic
if (isset($_POST['action']) && $_POST['action'] == 'deleteEntry') {
    $id = isset($_POST['klantnummer']) ? intval($_POST['klantnummer']) : 0;
    if ($id > 0) {
        $wpdb->delete( risiri_klanten, array( 'klantnummer' => $id ) );

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
    <th>Verwijder</th>


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



