<?php
/**
 * Template Name: index
 *
 * @package WordPress
 */
?>

<?php get_header(); ?>

    <script language="JavaScript">
        var today = new Date();
        var dd = today.getDate();
        var mm = today.getMonth()+1; //January is 0!

        var yyyy = today.getFullYear();
        if(dd<10){
            dd='0'+dd;
        }
        if(mm<10){
            mm='0'+mm;
        }
        var today = dd+'-'+mm+'-'+yyyy;
        document.getElementById("date").innerHTML = today;

    </script>
    <script>
        $( function() {
            $( "#tabs" ).tabs();
        } );
    </script>


<div id="tabs">

    <ul id="table-nav">
        <li><a href="#tab-artikelen">Artikelen</a></li>
        <li><a href="#tab-klanten">Klanten</a></li>
    </ul>

    <div id="tab-artikelen">
        <table id="data-table" cellspacing="0">
            <tr>
                <th width="14%">Artikelnummer</th>
                <th width="15%">Artikelnaam</th>
                <th width="15%">Aanmaakdatum</th>
                <th width="44%">Omschrijving</th>
                <th width="5%">Actie</th>
            </tr>
            <tr>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><span id="date">.</span></td>
                <td><input type="text"></td>
                <td><i class="fa fa-plus plus"></i></td>
            </tr>
            <tr>
                <td>001</td>
                <td>Monitor</td>
                <td>11-09-2018</td>
                <td style="text-align: left; padding-left: 15px;">Monitor van het merk Dell, 22"</td>
                <td><div class="action-buttons"><i class="fas fa-pen pen"><i class="fas fa-trash-alt trash"></div></td>
            </tr>
            <tr>
                <td>001</td>
                <td>Monitor</td>
                <td>11-09-2018</td>
                <td style="text-align: left; padding-left: 15px;">Monitor van het merk Dell, 22"</td>
                <td><div class="action-buttons"><i class="fas fa-pen pen"><i class="fas fa-trash-alt trash"></div></td>
            </tr>
            <tr>
                <td>001</td>
                <td>Monitor</td>
                <td>11-09-2018</td>
                <td style="text-align: left; padding-left: 15px;">Monitor van het merk Dell, 22"</td>
                <td><div class="action-buttons"><i class="fas fa-pen pen"><i class="fas fa-trash-alt trash"></div></td>
            </tr>
        </table>
    </div>
    <div id="tab-klanten">
        <table id="data-table" cellspacing="0">
            <tr>
                <th width="10%">Klantnummer</th>
                <th width="10%">Voornaam</th>
                <th width="10%">Tussenvoegsel</th>
                <th width="10%">Achternaam</th>
                <th width="50%">Email</th>
                <th width="5%">Actie</th>
            </tr>
            <tr>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><i class="fa fa-plus plus"></i></td>
            </tr>
            <tr>
                <td>001</td>
                <td>Max</td>
                <td>den</td>
                <td>Ouden</td>
                <td style="text-align: left; padding-left: 15px;">mdenouden@student.scalda.nl</td>
                <td><div class="action-buttons"><i class="fas fa-pen pen"><i class="fas fa-trash-alt trash"></div></td>
            </tr>
            <tr>
                <td>001</td>
                <td>Max</td>
                <td>den</td>
                <td>Ouden</td>
                <td style="text-align: left; padding-left: 15px;">mdenouden@student.scalda.nl</td>
                <td><div class="action-buttons"><i class="fas fa-pen pen"><i class="fas fa-trash-alt trash"></div></td>
            </tr>
            <tr>
                <td>001</td>
                <td>Max</td>
                <td>den</td>
                <td>Ouden</td>
                <td style="text-align: left; padding-left: 15px;">mdenouden@student.scalda.nl</td>
                <td><div class="action-buttons"><i class="fas fa-pen pen"><i class="fas fa-trash-alt trash"></div></td>
            </tr>
        </table>
    </div>
</div>



<?php get_footer(); ?>