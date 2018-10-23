<?php
/**
 * Created by PhpStorm.
 * User: Erwin Jobse
 * Date: 10/12/2018
 * Time: 9:11 AM
 */

?>
<div id="tab-uitleningen">
    <h1> Why don't you fix me </h1>

    <?php
    //please delete me
    for ($x = 1; $x <= 500; $x++) {
        if ($x % 2 == 0){
            echo "|";
        } else {
            echo '_';
        }
         if ($x % 3 == 0){
            echo "O";
        }
        if ($x % 7 == 0){
            echo "|";
        }
        if ($x % 11 == 0){
            echo "~";
        }
        if ($x % 13 == 0){
            echo "+";
        }
        if ($x % 17 == 0){
            echo "#";
        }
        if ($x % 19 == 0){
            echo "&";
        }
        if ($x % 23 == 0){
            echo ":";
        }
        if ($x % 50 == 0){
            echo "<br>";
        }




    }



    ?>

</div>
