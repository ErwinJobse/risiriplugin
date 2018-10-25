<?php
/**
 * Created by PhpStorm.
 * User: Erwin Jobse
 * Date: 10/24/2018
 * Time: 11:07 AM
 */


$path = preg_replace('/wp-content(?!.*wp-content).*/','',__DIR__);

global $wpdb;
define('WP_USE_THEMES', false);
include($path.'wp-load.php');

include(RisiriWidget_PLUGIN_DIR . '/classes/global/db.php');


if (isset($_GET["add"])){ //add row



}

else if (isset($_GET["delete"])){ //delete row


}

else if (isset($_GET["edit"])){ //edit row


} else{
   echo "Not the right page" ;
}

