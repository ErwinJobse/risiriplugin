<?php
/*
Plugin Name: Risiri
Description: This plugin adds a custom widget.
Version: 1.0
Author: Erwin Jobse
License: GPL2
*/




include( plugin_dir_path( __FILE__ ) . 'include.php');

add_shortcode('risiriTable', 'table_creation');

wp_enqueue_script('addArtikel', get_stylesheet_directory_uri() . '/js/addArtikel.js');
wp_localize_script('addArikelt', 'addArtikel', array(
    'pluginsUrl' => plugins_url(),
));

?>

