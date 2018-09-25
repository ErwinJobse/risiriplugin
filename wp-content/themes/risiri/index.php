<?php
/**
 * Template Name: index
 *
 * @package WordPress
 */
global $wp;
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
    $(function() {
        $("#tabs").tabs({
            activate: function(event, ui) {
                window.location.hash = ui.newPanel.attr('id');
            }
        });
    });
    </script>

    <div id="success"></div>

    <div id="tabs">

        <ul id="table-nav">
            <li><a href="#tab-artikelen">Artikelen</a></li>
            <li><a href="#tab-klanten">Klanten</a></li>
        </ul>

        <div id="tab-artikelen">
            <table id="data-artikelen" cellspacing="0">
                <tr>
                    <th width="8%">Artikelnummer</th>
                    <th width="15%">Artikelnaam</th>
                    <th width="15%">Aanmaakdatum</th>
                    <th width="48%">Omschrijving</th>
                    <?php
                    if ( $edit === true || $add === true  ) { ?>
                        <th width="7%">Actie</th>
                    <?php } ?>
                </tr>

                <?php
                if ( $add === TRUE ) { // add artikel row ?>

                    <form name="sentMessage" id="contactForm">
                        <tr>

                    <tr>
                        <form method="post">
                            <td>Laatste row ++</td>
                            <td><input type="text" name="Artikelnaam" placeholder="Artikelnaam"></td>
                            <td id="date">.</td>
                            <td><input type="text" name="omschrijving" placeholder="Omschrijving"></td>
                            <td><button type="submit" class="actionbutton" name="submitArtikel"><i class="fa fa-plus plus"></i></button></td>


                        </tr>
                    </form>

                <?php } ?>

                <?php foreach ($getArtikel as $row){  ?>

                    <?php  if ( $add === true ) {  ?>
                        <tr>
                            <form method="post">
                                <td><input type="text" name="Artikelnummer" value="<?php echo $row->Artikelnummer;?>"></td>
                                <td ><input type="text" name="Artikelnaam" value="<?php echo $row->Artikelnaam;?>"></td>
                                <td><?php echo $row->Aanmaakdatum;?></td>
                                <td><input type="text" name="omschrijving" value="<?php echo $row->omschrijving;?>"></td>
                                <td><div class="action-buttons"><button type="submit" class="actionbutton" name="editArtikel" value="edit"><i class="fas fa-pen pen"></i></button><?php if ( $delete === true  ) { ?><a class="fas fa-trash-alt trash"  href="index.php?delArtikel=<?php echo $row->Artikelnummer;?>" name="delete" ></a><?php } ?></div></td>

                            </form>
                        </tr>
                    <?php } else{ ?>
                        <tr>
                            <td><?php echo $row->Artikelnummer;?></td>
                            <td><?php echo $row->Artikelnaam;?></td>
                            <td><?php echo $row->Aanmaakdatum;?></td>
                            <td><?php echo $row->omschrijving;?></td>
                        </tr>
                    <?php } ?>

                <?php }  //close artikelen loop ?>

            </table>
        </div>
        <div id="tab-klanten">
            <table id="data-klanten" cellspacing="0">
                <tr>
                    <th width="8%">Klantnummer</th>
                    <th width="10%">Voornaam</th>
                    <th width="10%">Tussenvoegsel</th>
                    <th width="10%">Achternaam</th>
                    <th width="50%">Email</th>
                    <?php if ( $edit === true || $add === true  ) { ?>
                        <th width="7%">Actie</th>
                    <?php } ?>
                </tr>
                <?php  if ( $add === true ) {  //add klant row ?>
                    <tr>
                        <form method="post">
                            <td>Laatste row ++</td>
                            <td><input type="text" name="voorNaam"></td>
                            <td><input type="text" name="TussenVoegsel"></td>
                            <td><input type="text" name="Achternaam"></td>
                            <td><input type="text" name="email"></td>
                            <td><button type="submit" class="actionbutton" name="submitKlant"><i class="fa fa-plus plus"></i></button></td>

                        </form>
                    </tr>
                <?php } ?>
                <?php foreach ($getKlant as $row){ ?>

                    <?php  if ( $edit === true ) { ?>
                        <tr>
                            <form method="post">
                                <td><input type="text" name="klantnummer" value="<?php echo $row->klantnummer;?>"></td>
                                <td><input type="text" name="voorNaam" value="<?php echo $row->voorNaam;?>""></td>
                                <td><input type="text" name="TussenVoegsel" value="<?php echo $row->TussenVoegsel;?>"></td>
                                <td><input type="text" name="Achternaam" value="<?php echo $row->Achternaam;?>"></td>
                                <td><input type="text" name="email" value="<?php echo $row->email;?>"></td>
                                <td><div class="action-buttons"><button type="submit" class="actionbutton" name="editKlant" value="edit"><i class="fas fa-pen pen"></i></button><?php if ( $delete === true  ) { ?><a class="fas fa-trash-alt trash"  href="index.php?delArtikel=<?php echo $row->klantnummer;?>" name="delete" ></a><?php } ?></div></td>

                            </form>
                        </tr>
                    <?php } else{?>
                        <tr>

                            <td><?php echo $row->klantnummer;?></td>
                            <td><?php echo $row->voorNaam;?></td>
                            <td><?php echo $row->TussenVoegsel;?></td>
                            <td><?php echo $row->Achternaam;?></td>
                            <td><?php echo $row->email;?></td>
                        </tr>
                    <?php } ?>

                <?php } //close klanten loop ?>

                </tr>
            </table>
        </div>
    </div>

    <!-- only for test -->
    <form name="sentMessage" id="contactForm" action="<?php echo bloginfo('template_directory'); ?>/addArtikel.php" method="POST">
        <input class="form-control" id="Artikelnaam"  required data-validation-required-message="Please enter your name.">
        <input class="form-control" id="omschrijving"  required data-validation-required-message="sorry">






        <button type="submit"  id="sendMessageButton" >Send</button>




    </form>






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
    echo "<meta http-equiv=\"refresh\" content=\"0;URL='#tab-artikelen'\" />";


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

        echo "<meta http-equiv=\"refresh\" content=\"0;URL='#tab-klanten'\" />";



    }

}
//delete Artikel
if (isset( $_POST['deleteArtikel'])) {
    $del = $_POST['Artikelnummer'];
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
if (isset( $_POST['deleteKlant'])) {
    $del = $_POST['klantnummer'];
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
        echo "<meta http-equiv=\"refresh\" content=\"0;URL='#tab-artikelen'\" />";


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
        echo "<meta http-equiv=\"refresh\" content=\"0;URL='#tab-klanten'\" />";

    }

}



?>

