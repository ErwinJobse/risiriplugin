<?php

class table2{


    public function __construct(){

            add_shortcode('risiriTable2', array($this, 'shortcode'));
        }

    public function shortcode(){

        include(plugin_dir_path(__FILE__) . '/include.php');
        include(plugin_dir_path(__FILE__) . '/roleCheck.php');
        include(plugin_dir_path(__FILE__) . '/db.php');

        //css file for table
        wp_register_style('table2', plugins_url('table.css',__FILE__ ));
        wp_enqueue_style('table2');

        wp_register_script( 'addArtikel', plugins_url( 'js/jquery.tabledit.js', __FILE__ ) );
        wp_enqueue_script('addArtikel');

        ?>

        <?php if ($view === TRUE) { //show content  ?>

        <div class="navbar-logo">
            <?php the_custom_logo(); ?>
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
            </ul>

            <?php include(plugin_dir_path(__FILE__) . '/tables/tableArtikelen.php'); ?>
            <?php include(plugin_dir_path(__FILE__) . '/tables/tableKlanten.php'); ?>


        </div>


    <?php }  //end view
    }
}

$risiriTable2 = new table2();

    ?>


