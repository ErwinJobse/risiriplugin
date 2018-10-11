<?php
/*
Plugin Name: Risiri warehouse management
Plugin URI: https://github.com/MextroNL/risiriplugin
Description: warehouse management
Author: Max den Ouden, Erwin Jobse, Jop de Meurichy, Owen Vermeulen
Version: 0.42
*/
class RisiriWarehouseManagement{

    public function load()
    {
        RisiriWarehouseManagement::includes();
    }

    public function includes()
    {
        include_once(plugin_dir_path(__FILE__) . 'classes/table/table.php');

    }
}


RisiriWarehouseManagement::load();
?>

