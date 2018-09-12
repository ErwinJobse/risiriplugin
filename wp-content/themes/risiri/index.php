<?php
/**
 * Template Name: index
 *
 * @package WordPress
 */
?>

<?php get_header(); ?>

<div class="table-container">
<table class="artikel-table" cellspacing="0">
    <tr>
        <th>Artikelnummer</th>
        <th>Artikelnaam</th>
        <th>Aanmaakdatum</th>
        <th>Omschrijving</th>
        <th>Actie</th>
    </tr>
    <tr>
        <td><input type="text"></td>
        <td><input type="text"></td>
        <td><span id="date">.</span></td>
        <td><input type="text"></td>
        <td><i class="fa fa-plus plus"></i></td>
    </tr>
    <tr>
        <td>001</td>
        <td>Monitor</td>
        <td>11-09-2018</td>
        <td>Monitor van het merk Dell, 22"</td>
        <td><div class="action-buttons"><i class="fas fa-pen pen"><i class="fas fa-trash-alt trash"></div></td>
    </tr>
</table>
</div>

    <script language="JavaScript">
        var today = new Date();
        var dd = today.getDate();
        var mm = today.getMonth()+1; //January is 0!

        var yyyy = today.getFullYear();
        if(dd<10){
            dd='0'+dd;
        }
        if(mm<10){
            mm='0'+mm;
        }
        var today = dd+'-'+mm+'-'+yyyy;
        document.getElementById("date").innerHTML = today;

    </script>

<?php get_footer(); ?>