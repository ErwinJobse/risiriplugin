<?php
/*
Plugin Name: Risiri warehouse management
Plugin URI: https://github.com/MextroNL/risiriplugin
Description: warehouse management
Author: Max den Ouden, Erwin Jobse, Jop de Meurichy, Owen Vermeulen
Version: 0.50
*/

define ( 'RisiriWidget', __FILE__ );

class RisiriWarehouseManagement{

    public function __construct()
    {
        RisiriWarehouseManagement::includes();
        define( 'RisiriWidget', plugin_basename(
            RisiriWidget ) );
        define( 'RisiriWidget_PLUGIN_DIR', untrailingslashit( dirname(
            RisiriWidget ) ) );
        define( 'RisiriWidget_REQUIRED_WP_VERSION', '4.9.8' );

        createDB::createTables();


    }

    public function includes()
    {
        include_once(plugin_dir_path(__FILE__) . 'classes/table/table.php');
        include_once(plugin_dir_path(__FILE__) . 'classes/global/createDB.php');


    }
}


$RisiriWarehouseManagement = new RisiriWarehouseManagement();
?>

