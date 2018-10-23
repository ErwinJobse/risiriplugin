<?php
/**
 * Created by PhpStorm.
 * User: Owen Vermeulen
 * Date: 9/25/2018
 * Time: 10:04 AM
 */ ?>

<div id="tab-telaat">
    <table id="data-telaat" cellspacing="0">
        <tr>
            <th width="8%">Uitleningnummer</th>
            <th width="10%">Artikelnummer</th>
            <th width="10%">Klant</th>
            <th width="10%">Klantnummer</th>
            <th width="30%">Reserveringnummer</th>
            <?php if ($edit === true || $add === true) { ?>
                <th width="7%">Actie</th>
            <?php } ?>
        </tr>
        <?php if ($add === true) {  //add telaat row ?>
            <tr>
                <form method="post">
                    <td><?php echo $maxKlant + 1; ?></td>
                    <td><input type="text" name=""></td>
                    <td><input type="text" name="TussenVoegsel"></td>
                    <td><input type="text" name="voorNaam"></td>
                    <td><input type="text" name="email"></td>
                    <td><input type="number" name="telefoon"></td>
                    <td>
                        <button type="submit" class="actionbutton" name="submitKlant"><i
                                    class="fa fa-plus plus"></i></button>
                    </td>

                </form>
            </tr>
        <?php } ?>



        <?php foreach ($getArtikel as $row) { ?>
        <tr>
            <td><?php echo $row->Artikelnummer; ?></td>
            <?php } ?>

            <?php foreach ($getKlant as $row) { ?>

            <td><?php echo $row->klantnummer; ?></td>
        </tr>
            <?php } ?>


        </tr>
    </table>
</div>

