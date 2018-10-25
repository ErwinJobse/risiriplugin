<?php
/**
 * Created by PhpStorm.
 * User: Erwin Jobse
 * Date: 10/11/2018
 * Time: 9:11 AM
 */

$path = preg_replace('/wp-content(?!.*wp-content).*/','',__DIR__);

global $wpdb;
define('WP_USE_THEMES', false);
include($path.'wp-load.php');

$tableKlant = 'risiri_klanten';
$tableArtikel = 'risiri_artikelen';
$tableLog = 'risiri_log';


$getArtikel = $wpdb->get_results("SELECT * FROM $tableArtikel Order By id desc LIMIT $start_from, $num_rec_per_page");
$getArtikelFull = $wpdb->get_results("SELECT * FROM $tableArtikel");


$num_rec_per_page = 5;


if (isset($_GET["page"])) { $page  = $_GET["page"]; } else { $page=1; };


$start_from = ($page-1) * $num_rec_per_page;


$sqlTotal = "SELECT * FROM items";
$sql = "SELECT * FROM items Order By id desc LIMIT $start_from, $num_rec_per_page";





foreach ($getArtikel as $row) {


    $json[] = $row;


  }


  $data['data'] = $json;


$result =  $getArtikelFull;



echo json_encode($data);


?>