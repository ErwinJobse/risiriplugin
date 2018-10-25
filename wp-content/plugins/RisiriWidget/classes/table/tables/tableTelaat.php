<?php
/**
 * Created by PhpStorm.
 * User: Owen Vermeulen
 * Date: 9/25/2018
 * Time: 10:04 AM
 */

?>

<div id="tab-telaat">
    <script type="text/javascript">
        $(
            function () {
                $("#telaat-table").FullTable({
                    "alwaysCreating": false,
                    "selectable": false,
                    "editable": false,
                    "fields": {
                        "Uitleningnummer": {
                            "mandatory": false,
                        },
                        "Artikelnummer": {
                            "mandatory": true,
                        },
                        "Klant": {
                            "mandatory": false,
                        },
                        "Klantnummer": {
                            "mandatory": false,
                        },

                    }
                });
                $("#telaat-table-add-row").click(function () {
                    $("#telaat-table").FullTable("addRow");
                });
                $("#telaat-table-get-value").click(function () {
                    console.log($("#artikelen-table").FullTable("getData"));
                });
                $("#telaat-table").FullTable("on", "error", function (errors) {
                    for (var error in errors) {
                        error = errors[error];
                        console.log(error);
                    }
                });
                $("#telaat-table").FullTable("draw");
            }
        );
    </script>
    <div id="jquery-script-menu">
        <div class="jquery-script-center">

            <div class="jquery-script-clear"></div>
        </div>
    </div>
    <div class="container">
        <table class="fulltable fulltable-editable" id="telaat-table">
            <thead>
            <tr>
                <th fulltable-field-name="Uitleningnummer">Uitleningnummer</th>
                <th fulltable-field-name="Artikelnummer">Artikelnummer</th>
                <th fulltable-field-name="Klant">Klant</th>
                <th fulltable-field-name="Klantnummer">Klantnummer</th>

            </tr>
            </thead>
            <?php
            //foreach voor uitleningen in te laat tabel
            foreach ($getUitlening as $item) {
                if ($item->inleverDatum <= date("Y-m-d") && $item->ingeleverd == 0) {

                    ?>
                    <tr>
                        <td><?php echo $item->uitleenNummer; ?></td>
                        <td><?php echo $item->Artikelnummer; ?></td>
                        <td><?php
                            foreach ($getKlant as $value) {
                                if($item->Klantnummer == $value->klantnummer){
                                echo $value->voorNaam;
                                }
                            }
                            ?>
                        </td>
                        <td><?php echo $item->Klantnummer; ?></td>
                    </tr>
                <?php }
            }
            ?>
        </table>
    </div>

