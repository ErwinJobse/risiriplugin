<?php
/**
 *@author: Erwin Jobse
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