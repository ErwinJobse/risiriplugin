<?php
/*
Plugin Name: Risiri warehouse management plugin
Plugin URI: https://github.com/MextroNL/risiriplugin
Description: some nice text...
Version: 0.4
*/


include( plugin_dir_path( __FILE__ ) . 'classes/table/table.php');

// CSS files -------------------------------------------
wp_register_style('style', plugins_url('style.css',__FILE__ ));
wp_enqueue_style('style');



// JS files ----------------------------------------------
wp_register_script( 'addArtikel', plugins_url( 'js/addArtikel.js', __FILE__ ) );
wp_enqueue_script('addArtikel');




wp_enqueue_script('addArtikel', get_stylesheet_directory_uri() . '/js/addArtikel.js');
wp_localize_script('addArikelt', 'addArtikel', array(
    'pluginsUrl' => plugins_url(),
));

?>

