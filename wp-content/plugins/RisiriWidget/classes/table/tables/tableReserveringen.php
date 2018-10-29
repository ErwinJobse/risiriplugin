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
                        "voorNaam":{
                            "mandatory":true,
                            "placeholder": "Voornaam",
                            "errors":{
                                "mandatory":"Vul alle verplichte velden in",
                            }
                        },
                        "tussenVoegsel":{
                            "mandatory":true,
                            "placeholder": "Tussenvoegsel",
                            "errors":{
                                "mandatory":"Vul alle verplichte velden in",
                            }
                        },
                        "achterNaam":{
                            "mandatory":true,
                            "placeholder": "Achternaam",
                            "errors":{
                                "mandatory":"Vul alle verplichte velden in",
                            }
                        },
                        "uitleenDatum":{
                            "mandatory":true,
                            "disabled":false,
                            "placeholder": "Datum",
                            "errors":{
                                "mandatory":"Vul alle verplichte velden in",
                            }
                        },
                        "beginTijd":{
                            "mandatory":true,
                            "placeholder": "Begintijd",
                            "errors":{
                                "mandatory":"Vul alle verplichte velden in",
                            }
                        },
                        "eindTijd":{
                            "mandatory":true,
                            "placeholder": "Eindtijd",
                            "errors":{
                                "mandatory":"Vul alle verplichte velden in",
                            }

                        },
                        "doel":{
                            "mandatory":false,
                            "placeholder": "Beschrijving van het doel",
                        },
                    }
                });

                $("#reserveringen-table-add-row").click(function() {
                    $("#reserveringen-table").FullTable("addRow");
                });
                $("#reserveringen-table-get-value").click(function() {
                    console.log($("#reserveringen-table").FullTable("getData"));
                });
                $("#reserveringen-table").FullTable("on", "error", function(errors) {
                    for (var error in errors) {
                        error = errors[error];
                        console.log(error);
                        $("#melding").show();
                        document.getElementById("meldingT").innerHTML = error;
                    }
                });
                $("#reserveringen-table").FullTable("draw");
            }
        );
    </script>
    <div id="jquery-script-menu">
        <div class="jquery-script-center">

            <div class="jquery-script-clear"></div>
        </div>
    </div>
    <div class="container">
        <table class="fulltable fulltable-editable" id="reserveringen-table">
            <thead>
            <tr>
                <th fulltable-field-name="voorNaam">Voornaam</th>
                <th fulltable-field-name="tussenVoegsel">Tussenvoegsel</th>
                <th fulltable-field-name="achterNaam">Achternaam</th>
                <th fulltable-field-name="uitleenDatum">Datum</th>
                <th fulltable-field-name="beginTijd">Begintijd</th>
                <th fulltable-field-name="eindTijd">Eindtijd</th>
                <th fulltable-field-name="doel">Doel</th>

            </tr>
            </thead>
            <tbody>
            <?php foreach ($getReservering as $row) { ?>
                <tr>
                    <td><span><?php echo $row->voorNaam; ?></span></td>
                    <td><span><?php echo $row->tussenVoegsel; ?></span></td>
                    <td><span><?php echo $row->achterNaam; ?></span></td>
                    <td><span><?php echo $row->uitleenDatum; ?></span></td>
                    <td><span><?php echo $row->beginTijd; ?></span></td>
                    <td><span><?php echo $row->eindTijd; ?></span></td>
                    <td class="doel"><span><?php echo $row->doel; ?></span></td>
                </tr>
            <?php } ?>
            </tbody>
        </table>

    </div>

</div>

