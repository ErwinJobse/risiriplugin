<?php
/**
 * Created by PhpStorm.
 * User: Erwin Jobse
 * Date: 10/23/2018
 * Time: 9:00 AM
 */

global $wpdb;

class createDB
{

    public function createTables(){

        include(RisiriWidget_PLUGIN_DIR . '/classes/global/db.php');

        if($wpdb->get_var( "show tables like '$risiriKlant'" ) != $wp_track_table) {

            $charset_collate = $wpdb->get_charset_collate();
            require_once(ABSPATH . 'wp-admin/includes/upgrade.php');

            $sql = "CREATE TABLE `risiri_artikelen` (
                 `Artikelnummer` int(10) NOT NULL AUTO_INCREMENT,
                 `Artikelnaam` varchar(32) NOT NULL,
                 `Aanmaakdatum` date DEFAULT NULL,
                 `omschrijving` text NOT NULL,
                 PRIMARY KEY (`Artikelnummer`)
                ) ENGINE=InnoDB AUTO_INCREMENT=345 DEFAULT CHARSET=$charset_collate 
                
                CREATE TABLE `risiri_artikel_reserveringen` (
                 `artikelArtikelnummer` int(10) NOT NULL,
                 `ReserveringenReserveringNummer` int(10) NOT NULL,
                 PRIMARY KEY (`artikelArtikelnummer`,`ReserveringenReserveringNummer`)
                ) ENGINE=InnoDB DEFAULT CHARSET=$charset_collate 
                
                    CREATE TABLE `risiri_emailherinnering` (
                 `emailID` int(10) NOT NULL AUTO_INCREMENT,
                 `Klantnummer` int(10) NOT NULL,
                 `herringeringsNummer` int(10) NOT NULL,
                 `uitleenNummer` int(10) NOT NULL,
                 PRIMARY KEY (`emailID`)
                ) ENGINE=InnoDB DEFAULT CHARSET=$charset_collate 
                
                    CREATE TABLE `risiri_klanten` (
                 `klantnummer` int(10) NOT NULL AUTO_INCREMENT,
                 `voorNaam` varchar(32) NOT NULL,
                 `TussenVoegsel` varchar(32) NOT NULL,
                 `Achternaam` varchar(32) NOT NULL,
                 `email` varchar(32) NOT NULL,
                 `tell` varchar(32) NOT NULL,
                 PRIMARY KEY (`klantnummer`)
                ) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=$charset_collate 
                
                    CREATE TABLE `risiri_log` (
                 `id` int(64) NOT NULL AUTO_INCREMENT,
                 `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
                 `event` text NOT NULL,
                 PRIMARY KEY (`id`)
                ) ENGINE=InnoDB AUTO_INCREMENT=574 DEFAULT CHARSET=$charset_collate 
                
                CREATE TABLE `risiri_reserveringen` (
                 `ReserveringNummer` int(10) NOT NULL AUTO_INCREMENT,
                 `Klantnummer` int(10) NOT NULL,
                 `Artikelnummer` int(10) NOT NULL,
                 `AanmaakDatum` date NOT NULL,
                 PRIMARY KEY (`ReserveringNummer`)
                ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=$charset_collate 
                
                CREATE TABLE `risiri_uitleningen` (
                 `uitleenNummer` int(10) NOT NULL AUTO_INCREMENT,
                 `Klantnummer` int(10) NOT NULL,
                 `Artikelnummer` int(10) NOT NULL,
                 `uitleenDatum` date NOT NULL,
                 `inleverDatum` date NOT NULL,
                 `ingeleverd` int(1) NOT NULL,
                 PRIMARY KEY (`uitleenNummer`)
                ) ENGINE=InnoDB DEFAULT CHARSET=$charset_collate";

            dbDelta($sql);

        }



    }

}
