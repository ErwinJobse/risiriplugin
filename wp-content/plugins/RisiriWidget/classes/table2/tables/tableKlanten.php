<?php
/**
 * Created by PhpStorm.
 * User: Erwin Jobse
 * Date: 9/25/2018
 * Time: 10:04 AM
 */ ?>

<div id="tab-klanten">
            <table id="data-klanten" cellspacing="0">
                <tr>
                    <th width="8%">Klantnummer</th>
                    <th width="10%">Voornaam</th>
                    <th width="10%">Tussenvoegsel</th>
                    <th width="10%">Achternaam</th>
                    <th width="50%">Email</th>
                    <?php if ($edit === true || $add === true) { ?>
                        <th width="7%">Actie</th>
                    <?php } ?>
                </tr>
                <?php if ($add === true) {  //add klant row ?>
                    <tr>
                        <form method="post">
                            <td><?php echo $maxKlant + 1; ?></td>
                            <td><input type="text" name="voorNaam"></td>
                            <td><input type="text" name="TussenVoegsel"></td>
                            <td><input type="text" name="Achternaam"></td>
                            <td><input type="text" name="email"></td>
                            <td>
                                <button type="submit" class="actionbutton" name="submitKlant"><i
                                            class="fa fa-plus plus"></i></button>
                            </td>

                        </form>
                    </tr>
                <?php } ?>
                <?php foreach ($getKlant as $row) { ?>

                    <?php if ($edit === true) { ?>
                        <tr>
                            <form method="post">
                                <td><input type="text" name="klantnummer" value="<?php echo $row->klantnummer; ?>"></td>
                                <td><input type="text" name="voorNaam" value="<?php echo $row->voorNaam; ?>""></td>
                                <td><input type="text" name="TussenVoegsel" value="<?php echo $row->TussenVoegsel; ?>">
                                </td>
                                <td><input type="text" name="Achternaam" value="<?php echo $row->Achternaam; ?>"></td>
                                <td><input type="text" name="email" value="<?php echo $row->email; ?>"></td>
                                <td>
                                    <div class="action-buttons">
                                        <button type="submit" class="actionbutton" name="editArtikel" value="edit"><i
                                                    class="fas fa-pen pen"></i></button><?php if ($delete === true) { ?>
                                            <button class="actionbutton" name="deleteKlant"><i
                                                        class="fas fa-trash-alt trash"></i></button><?php } ?></div>
                                </td>

                            </form>
                        </tr>
                    <?php } else { ?>
                        <tr>

                            <td><?php echo $row->klantnummer; ?></td>
                            <td><?php echo $row->voorNaam; ?></td>
                            <td><?php echo $row->TussenVoegsel; ?></td>
                            <td><?php echo $row->Achternaam; ?></td>
                            <td><?php echo $row->email; ?></td>
                        </tr>
                    <?php } ?>

                <?php } //close klanten loop ?>

                </tr>
            </table>
        </div>