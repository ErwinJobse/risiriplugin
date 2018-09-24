<?php
/**
 * Created by PhpStorm.
 * User: Erwin Jobse
 * Date: 9/20/2018
 * Time: 8:39 AM
 */


$path = preg_replace('/wp-content(?!.*wp-content).*/','',__DIR__);

global $wpdb;
define('WP_USE_THEMES', false);
include($path.'wp-load.php');


$tableArtikel = 'risiri_artikelen';
$tableLog = 'risiri_log';

// Check for empty fields
if(empty($_POST['Artikelnaam'])  		||
    empty($_POST['omschrijving']))
{
    echo "No arguments Provided!";
    return false;
}

$Artikelnaam = strip_tags(htmlspecialchars($_POST['Artikelnaam']));
$omschrijving = strip_tags(htmlspecialchars($_POST['omschrijving']));


//upload data to wordpress database
        $wpdb->insert($tableArtikel, array(

            'Artikelnaam' => $Artikelnaam,
            'omschrijving' => $omschrijving,
            'Aanmaakdatum' => date('Y-m-d'),

        ),
            array('%s', '%s')


        );

$wpdb->insert($tableLog, array(

    'event' => "hello",
),
    array('%s')
);


return false;


