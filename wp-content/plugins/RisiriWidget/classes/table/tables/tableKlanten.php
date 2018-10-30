<?php
/**
 * Created by PhpStorm.
 * User: Erwin Jobse, Jop de Meurichy
 * Date: 9/25/2018
 * Time: 10:03 AM
 */ ?>

<div id="tab-klanten">
    <script type="text/javascript">
        $(
            function() {
                $("#klanten-table").FullTable({
                    "alwaysCreating":true,
                    "selectable":false,
                    "fields": {
                        "klantnummer":{
                            "mandatory":false,
                            "disabled": true,
                            "placeholder": "N.V.T.",
                        },
                        "voorNaam":{
                            "mandatory":true,
                            "placeholder": "Voornaam",
                            "errors":{
                                "mandatory":"Vul alle verplichte velden in",
                            }
                        },
                        "TussenVoegsel":{
                            "mandatory":false,
                            "placeholder": "Tussenvoegsel",

                        },
                        "Achternaam":{
                            "mandatory":true,
                            "placeholder": "Achternaam",
                            "errors":{
                                "mandatory":"Vul alle verplichte velden in",
                            }
                        },
                        "email":{
                            "mandatory":true,
                            "placeholder": "Email",
                            "validator":function(email) {
                                if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))
                                {
                                    $("#melding").hide();
                                    return true;
                                }
                                return false;

                            },
                            "errors":{
                                "mandatory":"Vul alle verplichte velden in",
                                "validator": "Je hebt een ongeldig emailadres ingevuld!"
                            }
                        },
                        "telNummer":{
                            "mandatory":true,
                            "placeholder": "Telefoon",
                            "errors":{
                                "mandatory":"Vul alle verplichte velden in",
                            }
                        },

                    }
                });
                $("#klanten-table-add-row").click(function() {
                    $("#klanten-table").FullTable("addRow");
                });
                $("#klanten-table-get-value").click(function() {
                    console.log($("#klanten-table").FullTable("getData"));
                });
                $("#klanten-table").FullTable("on", "error", function(errors) {
                    for (var error in errors) {
                        error = errors[error];
                        console.log(error);
                        $("#melding").show();
                        document.getElementById("meldingT").innerHTML = error;
                    }
                });
                $("#klanten-table").FullTable("draw");
            }
        );
    </script>


    <div id="jquery-script-menu">
        <div class="jquery-script-center">

            <div class="jquery-script-clear"></div>
        </div>
    </div>
    <div class="container">
        <table class="fulltable fulltable-editable" id="klanten-table">
            <thead>
            <tr>
                <th fulltable-field-name="klantnummer">Klantnummer</th>
                <th fulltable-field-name="voorNaam">Voornaam</th>
                <th fulltable-field-name="TussenVoegsel">Tussenvoegsel</th>
                <th fulltable-field-name="Achternaam">Achternaam</th>
                <th fulltable-field-name="email">Email</th>
                <th fulltable-field-name="telNummer">Telefoon</th>

            </tr>
            </thead>
            <tbody>
            <?php foreach ($getKlant as $row) { ?>
            <tr>
                <td><span><?php echo $row->klantnummer; ?></span></td>
                <td><span><?php echo $row->voorNaam; ?></span></td>
                <td><span><?php echo $row->TussenVoegsel; ?></span></td>
                <td><span><?php echo $row->Achternaam; ?></span></td>
                <td><span><?php echo $row->email; ?></span></td>
                <td><span><?php echo $row->telNummer; ?></span></td>
            </tr>
            </tr>
            </tr>
            <?php } ?>
            </tbody>
        </table>

    </div>

</div>


