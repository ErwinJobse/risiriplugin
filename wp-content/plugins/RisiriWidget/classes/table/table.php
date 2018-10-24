<?php

class table{


    public function __construct(){

            add_shortcode('risiriTable', array($this, 'shortcode'));
        }

    public function shortcode(){

        include(RisiriWidget_PLUGIN_DIR . '/classes/table/include.php');
        include(RisiriWidget_PLUGIN_DIR . '/classes/global/roleCheck.php');
        include(RisiriWidget_PLUGIN_DIR . '/classes/global/db.php');

        //css file for table
        wp_register_style('table', plugins_url('table.css',__FILE__ ));
        wp_enqueue_style('table');



        ?>

        <?php if ($view === TRUE) { //show content  ?>

        <div class="meldingVoltooid">
            <p><h3>Melding:</h3></p>
            <div class="meldingText">
                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing <a class="meldingKleur">elit.</a></p>
            </div>
        </div>


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
                <li><a href="#tab-uitleningen">Uitleningen</a></li>
                <li><a href="#tab-reserveringen">Reserveringen</a></li>
            </ul>

            <?php
            include(RisiriWidget_PLUGIN_DIR . '/classes/table/tables/tableArtikelen.php');
            include(RisiriWidget_PLUGIN_DIR . '/classes/table/tables/tableKlanten.php');
            include(RisiriWidget_PLUGIN_DIR . '/classes/table/tables/tableUitleningen.php');
            include(RisiriWidget_PLUGIN_DIR . '/classes/table/tables/tableReserveringen.php'); ?>


        </div>


    <?php }  //end view
    }
}

$risiriTable = new table();

    ?>


