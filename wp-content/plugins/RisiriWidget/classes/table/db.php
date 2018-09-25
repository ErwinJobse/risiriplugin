<?php
/**
 * Created by PhpStorm.
 * User: Erwin Jobse
 * Date: 9/25/2018
 * Time: 9:25 AM
 */

global $wpdb;

$tableKlant = 'risiri_klanten';
$tableArtikel = 'risiri_artikelen';
$tableLog = 'risiri_log';

$getKlant = $wpdb->get_results("SELECT * FROM $tableKlant");
$getArtikel = $wpdb->get_results("SELECT * FROM $tableArtikel");
$maxKlant = $wpdb->get_var("SELECT MAX(klantnummer) FROM $tableKlant");
$maxArtikel = $wpdb->get_var("SELECT MAX(artikelNummer) FROM $tableArtikel");

?>