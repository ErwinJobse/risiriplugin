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
                <th width="12%">Artikelnummer</th>
                <th width="15%">Artikelnaam</th>
                <th width="15%">Aanmaakdatum</th>
                <th width="44%">Omschrijving</th>
                <th width="7%">Actie</th>
            </tr>

            <tr>
                <form method="post">

                <td><input type="text" name="Artikelnummer"></td>
                <td><input type="text" name="Artikelnaam"></td>
                <td><input type="text" name="Aanmaakdatum"></td>
                <td><input type="text" name="omschrijving"></td>
                <td><input class="fa fa-plus plus" type="submit" name="submitArtikel" value="Submit"></input></td>
                </form>
            </tr>
            <?php
            foreach ($getArtikel as $row){ ?>

                <tr>
                    <form method="post">
                    <td><input type="text" name="Artikelnummer" value="<?php echo $row->Artikelnummer;?>"></td>
                    <td ><input type="text" name="Artikelnaam" value="<?php echo $row->Artikelnaam;?>"></td>
                    <td><?php echo $row->Aanmaakdatum;?></td>
                    <td><input type="text" name="omschrijving" value="<?php echo $row->omschrijving;?>"></td>
                    <td><div class="action-buttons"><input type="submit" class="fas fa-pen pen" name="editArtikel" value="edit"></input><a class="fas fa-trash-alt trash"  href="index.php?delArtikel=<?php echo $row->Artikelnummer;?>" name="delete" ></a></div></td>
                    </form>
                </tr>
            <?php }

            ?>

        </table>
    </div>
    <div id="tab-klanten">
        <table id="data-table" cellspacing="0">
            <tr>
                <th width="8%">Klantnummer</th>
                <th width="10%">Voornaam</th>
                <th width="10%">Tussenvoegsel</th>
                <th width="10%">Achternaam</th>
                <th width="50%">Email</th>
                <th width="7%">Actie</th>
            </tr>
            <tr>
                <form method="post">

                    <td><input type="text" name="klantnummer"></td>
                    <td><input type="text" name="voorNaam"></td>
                    <td><input type="text" name="TussenVoegsel"></td>
                    <td><input type="text" name="Achternaam"></td>
                    <td><input type="text" name="email"></td>
                    <td><input class="fa fa-plus plus" type="submit" name="submitKlant" value="Submit"></input></td>
                </form>
            </tr>
            <?php
            foreach ($getKlant as $row){ ?>
            <tr>
                <form method="post">
                    <td><input type="text" name="klantnummer" value="<?php echo $row->klantnummer;?>"></td>
                    <td><input type="text" name="voorNaam" value="<?php echo $row->voorNaam;?>""></td>
                    <td><input type="text" name="TussenVoegsel" value="<?php echo $row->TussenVoegsel;?>"></td>
                    <td><input type="text" name="Achternaam" value="<?php echo $row->Achternaam;?>"></td>
                    <td><input type="text" name="email" value="<?php echo $row->email;?>"></td>
                    <td><div class="action-buttons"><input type="submit" class="fas fa-pen pen" name="editKlant" value="edit"></input><a class="fas fa-trash-alt trash"  href="index.php?delKlant=<?php echo $row->Artikelnummer;?>" name="delete" ></a></div></td>
                </form>
            </tr>
            <?php }

            ?>



            </tr>
        </table>
    </div>
</div>

<!--
    <script>
        function listenForDoubleClick(element) {
            element.contentEditable = true;
            setTimeout(function() {
                if (document.activeElement !== element) {
                    element.contentEditable = false;
                }
            }, 300);
        }
    </script>

    -->




<?php

//add artikel
if ( isset( $_POST['submitArtikel'] ) ) {



    if (!empty($_POST['Artikelnaam'])) {
        $wpdb->insert($tableArtikel, array(

            'Artikelnaam' => $_POST['Artikelnaam'],
            'omschrijving' => $_POST['omschrijving']

        ),
            array('%s', '%s')
        );


    }
    echo "<meta http-equiv='refresh' content='0'>";


}

//add klant
if ( isset( $_POST['submitKlant'] ) ) {



    if (!empty($_POST['voorNaam'])) {
        $wpdb->insert($tableKlant, array(

            'voorNaam' => $_POST['voorNaam'],
            'TussenVoegsel' => $_POST['TussenVoegsel'],
            'Achternaam' => $_POST['Achternaam'],
            'email' => $_POST['email']

        ),
                array('%s', '%s', '%s', '%s')


        );
        echo "<meta http-equiv='refresh' content='0'>";



    }

}
//delete Artikel
if (isset($_GET['delArtikel'])) {
    $del = $_GET['delArtikel'];
    //SQL query for deletion.
    $wpdb->delete( $tableArtikel, array( 'Artikelnummer' => $del ) );

}

//delete klant
if (isset($_GET['delKlant'])) {
    $del = $_GET['delKlant'];
    //SQL query for deletion.
    $wpdb->delete( $tableKlant, array( 'Klantnummer' => $del ) );

}

//EDIT Artikel
if (isset($_GET['editArtikel'])) {
    $del = $_GET['editArtikel'];
    //SQL query for deletion.
    $wpdb->delete( $tableArtikel, array( 'Artikelnummer' => $del ) );

}

//edit artikel
if ( isset( $_POST['editArtikel'] ) ) {



    if (!empty($_POST['Artikelnaam'])) {

        $wpdb->update($tableArtikel, array(

            'Artikelnummer' => $_POST['Artikelnummer'],
            'Artikelnaam' => $_POST['Artikelnaam'],
            'omschrijving' => $_POST['omschrijving']

        ),
            array('Artikelnummer' => $_POST['Artikelnummer'])
        );
        echo "<meta http-equiv='refresh' content='0'>";





    }

}

//edit klant
if ( isset( $_POST['editKlant'] ) ) {

    if (!empty($_POST['voorNaam'])) {

        $wpdb->update($tableKlant, array(

            'voorNaam' => $_POST['voorNaam'],
            'Tussenvoegsel' => $_POST['TussenVoegsel'],
            'Achternaam' => $_POST['Achternaam'],
            'email' => $_POST['email']

        ),
            array('klantnummer' => $_POST['klantnummer'])
        );
        echo "<meta http-equiv='refresh' content='0'>";






    }

}






    ?>



<?php get_footer(); ?>