<?php
/**
 * Created by PhpStorm.
 * User: Erwin Jobse
 * Date: 9/25/2018
 * Time: 9:23 AM
 */

//add role Gebruiker
add_role('Gebruiker', 'Gebruiker');

//check functions based on role
if (current_user_can('manage_options')) { //admin role
    $view = true;
    $edit = true;
    $delete = true;
    $add = true;

} else if (current_user_can('Gebruiker')) { //Gebruiker role
    $view = true;
    $edit = true;
    $delete = false;
    $add = true;


} else { //everybody else
    $view = true;
    $edit = false;
    $delete = false;
    $add = false;
}

?>