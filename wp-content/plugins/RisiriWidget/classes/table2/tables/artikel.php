<?php
/**
 * Created by PhpStorm.
 * User: Erwin Jobse
 * Date: 10/8/2018
 * Time: 10:52 AM
 */

$path = preg_replace('/wp-content(?!.*wp-content).*/','',__DIR__);

global $wpdb;
define('WP_USE_THEMES', false);
include($path.'wp-load.php');

$tableKlant = 'risiri_klanten';
$tableArtikel = 'risiri_artikelen';
$tableLog = 'risiri_log';

$getKlant = $wpdb->get_results("SELECT * FROM $tableKlant");
$getArtikel = $wpdb->get_results("SELECT * FROM $tableArtikel");
$maxKlant = $wpdb->get_var("SELECT MAX(klantnummer) FROM $tableKlant");
$maxArtikel = $wpdb->get_var("SELECT MAX(artikelNummer) FROM $tableArtikel");

$page = isset($_GET['p'])? $_GET['p'] : '' ;
if($page=='view'){
     foreach ($getArtikel as $row) { ?>

         <tr>
                            <td><?php echo $row->Artikelnummer; ?></td>
                            <td><?php echo $row->Artikelnaam; ?></td>
                            <td><?php echo $row->Aanmaakdatum; ?></td>
                            <td><?php echo $row->omschrijving; ?></td>
         </tr>

                    <?php } ?>

                <?php   //close artikelen loop
} else{

    // Basic example of PHP script to handle with jQuery-Tabledit plug-in.
    // Note that is just an example. Should take precautions such as filtering the input data.

    header('Content-Type: application/json');

    $input = filter_input_array(INPUT_POST);



    if ($input['action'] == 'edit') {
        $wpdb->update($tableArtikel, array(

            'Artikelnummer' => $input['Artikelnummer'],
            'Artikelnaam' => $input['Artikelnaam'],
            'omschrijving' => $input['omschrijving']

        ),
            array('Artikelnummer' => $input['Artikelnummer'])
        );
        //$mysqli->query("UPDATE tabledit SET name='" . $input['name'] . "', gender='" . $input['gender'] . "', email='" . $input['email'] . "', phone='" . $input['phone'] . "', address='" . $input['address'] . "' WHERE id='" . $input['id'] . "'");
    } else if ($input['action'] == 'delete') {
        $wpdb->delete($tableArtikel, array('Artikelnummer' => $input['Artikelnummer']));

        //$mysqli->query("UPDATE tabledit SET deleted=1 WHERE id='" . $input['id'] . "'");
    }



    echo json_encode($input);

}
?>