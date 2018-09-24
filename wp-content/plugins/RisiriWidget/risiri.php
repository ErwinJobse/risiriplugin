<?php
/*
Plugin Name: Risiri
Description: This plugin adds a custom widget.
Version: 1.0
Author: Erwin Jobse
License: GPL2
*/

wp_register_style('style', plugins_url('style.css',__FILE__ ));
wp_enqueue_style('style');

include( plugin_dir_path( __FILE__ ) . 'table.php');
include( plugin_dir_path( __FILE__ ) . 'include.php');

add_shortcode('test', 'table_creation');
?>
