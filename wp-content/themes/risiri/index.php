<?php
/**
 * Template Name: index
 *
 * @package WordPress
 */
global $wpdb;

$tableKlant = 'risiri_klanten';
$tableArtikel = 'risiri_artikelen';

$getKlant = $wpdb->get_results( "SELECT * FROM $tableKlant" );
$getArtikel = $wpdb->get_results( "SELECT * FROM $tableArtikel" );
?>

<?php get_header(); ?>

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
    <script>
        $( function() {
            $( "#tabs" ).tabs();
        } );
    </script>


<div id="tabs">

    <ul id="table-nav">
        <li><a href="#tab-artikelen">Artikelen</a></li>
        <li><a href="#tab-klanten">Klanten</a></li>
    </ul>

    <div id="tab-artikelen">
        <table id="data-table" cellspacing="0">
            <tr>
                <th width="14%">Artikelnummer</th>
                <th width="15%">Artikelnaam</th>
                <th width="15%">Aanmaakdatum</th>
                <th width="44%">Omschrijving</th>
                <th width="5%">Actie</th>
            </tr>

            <tr>
                <td><input type="text" placeholder="Artikelnummer"></td>
                <td><input type="text" placeholder="Artikelnaam"></td>
                <td>Currentdate</td>
                <td><input type="text" placeholder="Omschrijving"></td>

                <td><i class="fa fa-plus plus"></i></td>
            </tr>
            <?php
            foreach ($getArtikel as $row){ ?>
                <tr>
                    <td><?php echo $row->Artikelnummer;?></td>
                    <td><?php echo $row->Artikelnaam;?></td>
                    <td><?php echo $row->Aanmaakdatum;?></td>
                    <td><?php echo $row->omschrijving;?></td>
                    <td><div class="action-buttons"><i class="fas fa-pen pen"><i class="fas fa-trash-alt trash"></div></td>

                </tr>
            <?php }

            ?>

        </table>
    </div>
    <div id="tab-klanten">
        <table id="data-table" cellspacing="0">
            <tr>
                <th width="10%">Klantnummer</th>
                <th width="10%">Voornaam</th>
                <th width="10%">Tussenvoegsel</th>
                <th width="10%">Achternaam</th>
                <th width="50%">Email</th>
                <th width="5%">Actie</th>
            </tr>
            <tr>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><i class="fa fa-plus plus"></i></td>
            </tr>
            <?php
            foreach ($getKlant as $row){ ?>
            <tr>
                <td><?php echo $row->klantnummer;?></td>
                <td><?php echo $row->voorNaam;?></td>
                <td><?php echo $row->TussenVoegsel;?></td>
                <td><?php echo $row->Achternaam;?></td>
                <td><?php echo $row->email;?></td>
                <td><div class="action-buttons"><i class="fas fa-pen pen"><i class="fas fa-trash-alt trash"></div></td>

            </tr>
            <?php }

            ?>



            </tr>
        </table>
    </div>
</div>

<?php

if ( isset( $_POST['submit'] ) ){

    global $wpdb;
    $tablename = $wpdb->prefix.'post_job';

    $wpdb->insert( $tablename, array(
        'organizationname' => $_POST['organizationname'],
        'post' => $_POST['post'],
        'publishfrom' => $_POST['publishfrom'],
        'publishupto' => $_POST['publishupto'],
        'qualification1' => $_POST['qualification1'],
        'qualification2' => $_POST['qualification2'],
        'qualification3' => $_POST['qualification3'],
        'qualification4' => $_POST['qualification4'],
        'experience1' => $_POST['experience1'],
        'experience2' => $_POST['experience2'],
        'experience3' => $_POST['experience3'],
        'training1' => $_POST['training1'],
        'training2' => $_POST['training2'],
        'training3' => $_POST['training3'],
        'training4' => $_POST['training4'],
        'training5' => $_POST['training5'] ),
        array( '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s' )
    );
}

    ?>



<?php get_footer(); ?>