<?php
/**
 *@author: Erwin Jobse
 */

global $wpdb;

$tableKlant = 'risiri_klanten';
$tableArtikel = 'risiri_artikelen';
$tableUitlening = 'risiri_uitleningen';
$tableReservering = 'risiri_reserveringen';
$tableLog = 'risiri_log';

$getKlant = $wpdb->get_results("SELECT * FROM $tableKlant");
$getArtikel = $wpdb->get_results("SELECT * FROM $tableArtikel");
$getUitlening = $wpdb->get_results("SELECT * FROM $tableUitlening");
$getReservering = $wpdb->get_results("SELECT * FROM $tableReservering");

$maxKlant = $wpdb->get_var("SELECT MAX(klantnummer) FROM $tableKlant");
$maxArtikel = $wpdb->get_var("SELECT MAX(artikelNummer) FROM $tableArtikel");
$maxUitlening = $wpdb->get_var("SELECT MAX(UitleenNummer) FROM $tableUitlening");

?>
