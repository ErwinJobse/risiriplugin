<?php
/**
 * Created by PhpStorm.
 * User: Erwin Jobse, Jop de Meurichy.
 * Date: 9/25/2018
 * Time: 10:03 AM
 */ ?>
<div id="tab-uitleningen">
    <script type="text/javascript">
        $(
            function() {
                $("#uitleningen-table").FullTable({
                    "alwaysCreating":true,
                    "selectable":false,
                    "fields": {
                        "Klantnummer":{
                            "mandatory":false,
                        },
                        "uitleenDatum":{
                            "mandatory":true,
                        },
                        "inleverDatum":{
                            "mandatory":false,
                        },
                        "ingeleverd":{
                            "mandatory":true,
                        },
                        "Artikelnummer":{
                            "mandatory":true,
                        },
                    }
                });
                $("#uitleningen-table-add-row").click(function() {
                    $("#uitleningen-table").FullTable("addRow");
                });
                $("#uitleningen-table-get-value").click(function() {
                    console.log($("#uitleningen-table").FullTable("getData"));
                });
                $("#uitleningen-table").FullTable("on", "error", function(errors) {
                    for (var error in errors) {
                        error = errors[error];
                        console.log(error);
                    }
                });
                $("#uitleningen-table").FullTable("draw");
            }
        );
    </script>


    <div id="jquery-script-menu">
        <div class="jquery-script-center">

            <div class="jquery-script-clear"></div>
        </div>
    </div>
    <div class="container">
        <table class="fulltable fulltable-editable" id="uitleningen-table">
            <thead>
            <tr>
                <th fulltable-field-name="Uitleningnummer">Uitleningnummer</th>
                <th fulltable-field-name="Klantnummer">Klantnummer</th>
                <th fulltable-field-name="uitleenDatum">Uitleen-datum</th>
                <th fulltable-field-name="inleverDatum">Inlever-datum</th>
                <th fulltable-field-name="ingeleverd">Ingeleverd</th>
                <th fulltable-field-name="Artikelnummer">Artikel-nummer</th>

            </tr>
            </thead>
            <tbody>
            <?php foreach ($getUitlening as $row) { ?>
            <tr>
                <td><span><?php echo $row->uitleenNummer; ?></span></td>
                <td><span><?php echo $row->Klantnummer; ?></span></td>
                <td><span><?php echo $row->uitleenDatum; ?></span></td>
                <td><span><?php echo $row->inleverDatum; ?></span></td>
                <td><span><?php if($row->ingeleverd){
                    echo "Ja";
                        } else{ echo "Nee"; }
                ?></span></td>
                <td><span><?php echo $row->Artikelnummer; ?></span></td>
            </tr>
            </tr>
            </tr>
            <?php } ?>
            </tbody>
        </table>

    </div>

</div>

<?php include(RisiriWidget_PLUGIN_DIR . '/classes/table/tables/js/artikel.tabledit.php'); ?>
