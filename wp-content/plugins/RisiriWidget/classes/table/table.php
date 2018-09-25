<?php

function table_creation()
{

    include(plugin_dir_path(__FILE__) . '/roleCheck.php');
    include(plugin_dir_path(__FILE__) . '/db.php');

    ?>

    <?php if ($view === TRUE) { //show content  ?>

    <?php get_header(); ?>

    <script>
        $(function () {
            $("#tabs").tabs();
            $("#tabs").show();
        });
    </script>

    <div id="success"></div>

    <div id="tabs">

        <ul id="table-nav">
            <li><a href="#tab-artikelen">Artikelen</a></li>
            <li><a href="#tab-klanten">Klanten</a></li>
        </ul>

        <?php include(plugin_dir_path(__FILE__) . '/tableArtikelen.php'); ?>
        <?php include(plugin_dir_path(__FILE__) . '/tableKlanten.php'); ?>


    </div>

    <!-- only for test -->
    <form name="sentMessage" id="addArtikel" action="<?php echo plugins_url(); ?>/addArtikel.php"
          method="POST">
        <input class="form-control" id="Artikelnaam" required
               data-validation-required-message="Please enter your name.">
        <input class="form-control" id="omschrijving" required data-validation-required-message="sorry">


        <button type="submit" id="addArtikelButton">Send</button>


    </form>


    <?php }  //end view
    ?>

<?php } // End table function ?>
