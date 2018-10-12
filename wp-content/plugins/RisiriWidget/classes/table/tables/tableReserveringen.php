<?php
/**
 * Created by PhpStorm.
 * User: Erwin Jobse
 * Date: 10/12/2018
 * Time: 9:11 AM
 */

?>

<div id="tab-reserveringen">
    <script type="text/javascript">
        $(
            function() {
                $("#reserveringen-table").FullTable({
                    "alwaysCreating":true,
                    "selectable":false,
                    "fields": {
                        "ReserveringNummer":{
                            "mandatory":true,
                        },
                        "Klantnummer":{
                            "mandatory":true,
                        },
                        "Artikelnummer":{
                            "mandatory":true,
                        },
                        "AanmaakDatum":{
                            "mandatory":false,
                        },

                    }
                });
                $("#reserveringen-table-add-row").click(function() {
                    $("#reserveringen-table").FullTable("addRow");
                });
                $("#reserveringen-table-get-value").click(function() {
                    console.log($("#reserveringen-table").FullTable("getData"));
                });
                $("#artikelen-table").FullTable("on", "error", function(errors) {
                    for (var error in errors) {
                        error = errors[error];
                        console.log(error);
                    }
                });
                $("#reserveringen-table").FullTable("draw");
            }
        );
    </script>
    </head>
    <body>
    <div id="jquery-script-menu">
        <div class="jquery-script-center">

            <div class="jquery-script-clear"></div>
        </div>
    </div>
    <div class="container">
        <table class="fulltable fulltable-editable" id="reserveringen-table">
            <thead>
            <tr>
                <th fulltable-field-name="ReserveringNummer">Reserveringsnummer</th>
                <th fulltable-field-name="Klantnummer">Klantnummer</th>
                <th fulltable-field-name="Artikelnummer">Artikelnummer</th>
                <th fulltable-field-name="AanmaakDatum">Aanmaakdatum</th>

            </tr>
            </thead>
            <tbody>
            <?php foreach ($getReservering as $row) { ?>
                <tr>
                    <td><span><?php echo $row->ReserveringNummer; ?></span></td>
                    <td><span><?php echo $row->Klantnummer; ?></span></td>
                    <td><span><?php echo $row->Artikelnummer; ?></span></td>
                    <td><span><?php echo $row->AanmaakDatum; ?></span></td>
                </tr>
            <?php } ?>
            </tbody>
        </table>

    </div>

</div>

<?php include(RisiriWidget_PLUGIN_DIR . '/classes/table/tables/js/artikel.tabledit.php'); ?>