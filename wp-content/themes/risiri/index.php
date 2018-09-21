<?php
/**
 * Template Name: index
 *
 * @package WordPress
 */
global $wpdb;

$tableKlant = 'risiri_klanten';
$tableArtikel = 'risiri_artikelen';
$tableLog = 'risiri_log';

$getKlant = $wpdb->get_results( "SELECT * FROM $tableKlant" );
$getArtikel = $wpdb->get_results( "SELECT * FROM $tableArtikel" );
$maxKlant = $wpdb->get_var( "SELECT MAX(klantnummer) FROM $tableKlant" );
$maxArtikel = $wpdb->get_var( "SELECT MAX(artikelNummer) FROM $tableArtikel" );

//add role Gebruiker
add_role( 'Gebruiker', 'Gebruiker' );
remove_role( 'beheerder' );

//check functions based on role
if( current_user_can('manage_options')) { //admin role
    $view = true;
    $edit = true;
    $delete = true;
    $add = true;

}
else if( current_user_can('Gebruiker')) { //Gebruiker role
    $view = true;
    $edit = true;
    $delete = false;
    $add = true;


} else{ //everybody else
    $view = true;
    $edit = false;
    $delete = false;
    $add = false;
}

?>

<?php if ( $view === TRUE ) { //show content  ?>

    <?php get_header(); ?>

    <script>
        $( function() {
            $( "#tabs" ).tabs();
            $( "#tabs" ).show();
        } );
    </script>


    <div id="tabs">

        <ul id="table-nav">
            <li><a href="#tab-artikelen">Artikelen</a></li>
            <li><a href="#tab-klanten">Klanten</a></li>
        </ul>

        <div id="tab-artikelen">
            <div class="Table" id="data-table">
                <div class="Row">
                    <div class="Cell">Artikelnummer</div>
                    <div class="Cell">Artikelnaam</div>
                    <div class="Cell">Aanmaakdatum</div>
                    <div class="Cell">Omschrijving</div>
                    <?php
                    if ( $edit === true || $add === true  ) { ?>
                        <div class="Cell">Actie</div>
                    <?php } ?>
                </div>

                <?php
                if ( $add === TRUE ) { // add artikel row ?>

                            <form method="post" class="Row">
                                <div class="Cell"><?php echo $maxArtikel + 1; ?></div>
                                <div class="Cell"><input type="text" name="Artikelnaam" placeholder="Artikelnaam"></div>
                                <div class="Cell" id="date">.</div>
                                <div class="Cell"><input type="text" name="omschrijving" placeholder="Omschrijving"></div>
                                <div class="Cell"><button type="submit" class="actionbutton" name="submitArtikel"><i class="fa fa-plus plus"></i></button></div>
                            </form>

                <?php } ?>

                <?php foreach ($getArtikel as $row){  ?>

                    <?php  if ( $add === true ) {  ?>

                            <form method="post" class="Row">
                                <div class="Cell"><input type="text" name="Artikelnummer" value="<?php echo $row->Artikelnummer;?>"></div>
                                <div class="Cell"><input type="text" name="Artikelnaam" value="<?php echo $row->Artikelnaam;?>"></div>
                                <div class="Cell"><?php echo $row->Aanmaakdatum;?></div>
                                <div class="Cell"><input type="text" name="omschrijving" value="<?php echo $row->omschrijving;?>"></div>
                                <div class="Cell action-buttons"><button type="submit" class="actionbutton" name="editArtikel" value="edit"><i class="fas fa-pen pen"></i></button><?php if ( $delete === true  ) { ?><a class="fas fa-trash-alt trash"  href="index.php?delArtikel=<?php echo $row->Artikelnummer;?>" name="delete" ></a><?php } ?></></div>

                            </form>

                    <?php } else{ ?>
                        <div class="Row">
                            <div class="Cell"><?php echo $row->Artikelnummer;?></div>
                            <div class="Cell"><?php echo $row->Artikelnaam;?></div>
                            <div class="Cell"><?php echo $row->Aanmaakdatum;?></div>
                            <div class="Cell"><?php echo $row->omschrijving;?></div>
                        </div>
                    <?php } ?>

                <?php }  //close artikelen loop ?>

            </div>

        <div id="tab-klanten">
            <div id="data-table">
                <div>
                    <div class="Cell">Klantnummer</div>
                    <div class="Cell">Voornaam</div>
                    <div class="Cell">Tussenvoegsel</div>
                    <div class="Cell">Achternaam</div>
                    <div class="Cell">Email</div>
                    <?php if ( $edit === true || $add === true  ) { ?>
                        <div>Actie</div>
                    <?php } ?>
                </div>
                <?php  if ( $add === true ) {  //add klant row ?>
                    <div class="Heading">
                        <form method="post">
                            <div><?php echo $maxKlant + 1; ?></div>
                            <div class="Cell"><input type="text" name="voorNaam" placeholder="voornaam"></div>
                            <div class="Cell"><input type="text" name="TussenVoegsel" placeholder="Tussenvoegsel"></div>
                            <div class="Cell"><input type="text" name="Achternaam" placeholder="Achternaam"></div>
                            <div class="Cell"><input type="text" name="email" placeholder="email"></div>
                            <div class="Cell"><button type="submit" class="actionbutton" name="submitKlant"><i class="fa fa-plus plus"></i></button></div>

                        </form>
                    </div>
                <?php } ?>
                <?php foreach ($getKlant as $row){ ?>

                    <?php  if ( $edit === true ) { ?>
                        <div class="Heading">
                            <form method="post">
                                <div class="Cell"><input type="text" name="klantnummer" value="<?php echo $row->klantnummer;?>"></div>
                                <div class="Cell"><input type="text" name="voorNaam" value="<?php echo $row->voorNaam;?>""></div>
                                <div class="Cell"><input type="text" name="TussenVoegsel" value="<?php echo $row->TussenVoegsel;?>"></div>
                                <div class="Cell"><input type="text" name="Achternaam" value="<?php echo $row->Achternaam;?>"></div>
                                <div class="Cell"><input type="text" name="email" value="<?php echo $row->email;?>"></div>
                                <div class="Cell"><div class="action-buttons"><button type="submit" class="actionbutton" name="editKlant" value="edit"><i class="fas fa-pen pen"></i></button><?php if ( $delete === true  ) { ?><a class="fas fa-trash-alt trash"  href="index.php?delArtikel=<?php echo $row->klantnummer;?>" name="delete" ></a><?php } ?></div></div>

                            </form>
                        </div>
                    <?php } else{?>
                        <div class="Heading">

                            <div class="Cell"><?php echo $row->klantnummer;?></div>
                            <div class="Cell"><?php echo $row->voorNaam;?></div>
                            <div class="Cell"><?php echo $row->TussenVoegsel;?></div>
                            <div class="Cell"><?php echo $row->Achternaam;?></div>
                            <div class="Cell"><?php echo $row->email;?></div>
                        </div>
                    <?php } ?>

                <?php } //close klanten loop ?>

            </div>
            </div>
    </div>







    <?php get_footer(); ?>

<?php }  //end view?>

<?php

//add artikel
if ( isset( $_POST['submitArtikel'] ) ) {


    if (!empty($_POST['Artikelnaam'])) {
        $wpdb->insert($tableArtikel, array(

            'Artikelnaam' => $_POST['Artikelnaam'],
            'omschrijving' => $_POST['omschrijving'],
            'Aanmaakdatum' => date('Y-m-d'),

        ),
            array('%s', '%s')
        );


    }
    //log
    $wpdb->insert($tableLog, array(

        'event' => $_POST['Artikelnaam'] . " " . $_POST['omschrijving'] . " added",
    ),
        array('%s')
    );
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
        //log
        $wpdb->insert($tableLog, array(

            'event' => $_POST['voorNaam'] . " " . $_POST['TussenVoegsel'] . " added",
        ),
            array('%s')
        );

        echo "<meta http-equiv='refresh' content='0'>";



    }

}
//delete Artikel
if (isset($_GET['delArtikel'])) {
    $del = $_GET['delArtikel'];
    //SQL query for deletion.
    $wpdb->delete( $tableArtikel, array( 'Artikelnummer' => $del ) );
    //log
    $wpdb->insert($tableLog, array(

        'event' => $del . " deleted",
    ),
        array('%s')
    );

}

//delete klant
if (isset($_GET['delKlant'])) {
    $del = $_GET['delKlant'];
    //SQL query for deletion.
    $wpdb->delete( $tableKlant, array( 'Klantnummer' => $del ) );
    $wpdb->insert($tableLog, array(

        'event' => $del . " deleted",
    ),
        array('%s')
    );

}


//edit artikel
if (isset($_POST['editArtikel'])) {


    if (!empty($_POST['Artikelnaam'])) {

        $wpdb->update($tableArtikel, array(

            'Artikelnummer' => $_POST['Artikelnummer'],
            'Artikelnaam' => $_POST['Artikelnaam'],
            'omschrijving' => $_POST['omschrijving']

        ),
            array('Artikelnummer' => $_POST['Artikelnummer'])
        );
        //log
        $wpdb->insert($tableLog, array(

            'event' => $_POST['Artikelnummer'] . " " . $_POST['Artikelnaam'] . " " . $_POST['omschrijving'] . " edited",
        ),
            array('%s')
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
        //log
        $wpdb->insert($tableLog, array(

            'event' => $_POST['klantnummer'] . " " . $_POST['voorNaam'] . " " . $_POST['TussenVoegsel'] . " edited",
        ),
            array('%s')
        );
        echo "<meta http-equiv='refresh' content='0'>";

    }

}



?>

