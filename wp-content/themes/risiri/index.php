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
                <form method="post">

                <td><input type="text" name="Artikelnummer"></td>
                <td><input type="text" name="Artikelnaam"></td>
                <td><input type="text" name="Aanmaakdatum"></td>
                <td><input type="text" name="omschrijving"></td>
                <td><input class="fa fa-plus plus" type="submit" name="submit" value="Submit"></input></td>
                </form>
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
                <td><i class="fa fa-plus plus" ></i></td>
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

if ( isset( $_POST['submit'] ) ) {



    if (!empty($_POST['Artikelnaam'])) {
        $wpdb->insert($tableArtikel, array(

            'Artikelnaam' => $_POST['Artikelnaam'],
            'omschrijving' => $_POST['omschrijving'],

        ),
            array('%s', '%s')
        );


    }


}

    ?>



<?php get_footer(); ?>