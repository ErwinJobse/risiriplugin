<?php
/**
 * Created by PhpStorm.
 * User: Erwin Jobse
 * Date: 9/25/2018
 * Time: 10:03 AM
 */ ?>

<div id="tab-artikelen">
            <table id="data-artikelen" cellspacing="0">
                <tr>
                    <th width="12%">Artikelnummer</th>
                    <th width="15%">Artikelnaam</th>
                    <th width="15%">Aanmaakdatum</th>
                    <th width="44%">Omschrijving</th>
                    <?php
                    if ($edit === true || $add === true) { ?>
                        <th width="7%">Actie</th>
                    <?php } ?>
                </tr>

                <?php
                if ($add === TRUE) { // add artikel row ?>

                    <form name="sentMessage" id="contactForm">
                        <tr>
                            <td><?php echo $maxArtikel + 1; ?></td>
                            <td><input type="text" class="form-control" name="Artikelnaam" placeholder="Artikelnaam"
                                       required data-validation-required-message="Vul aub de artikelnaam in"></td>
                            <td id="date">.</td>
                            <td><input type="text" class="form-control" name="omschrijving" placeholder="Omschrijving">
                            </td>
                            <td>
                                <button type="submit" class="actionbutton" name="submitArtikel" id="addArtikelButton">
                                    <i class="fa fa-plus plus"></i></button>
                            </td>


                        </tr>
                    </form>

                <?php } ?>

                <?php foreach ($getArtikel as $row) { ?>

                    <?php if ($add === true) { ?>
                        <tr>
                            <form method="post">
                                <td><input type="text" name="Artikelnummer" value="<?php echo $row->Artikelnummer; ?>">
                                </td>
                                <td><input type="text" name="Artikelnaam" value="<?php echo $row->Artikelnaam; ?>"></td>
                                <td><?php echo $row->Aanmaakdatum; ?></td>
                                <td><input type="text" name="omschrijving" value="<?php echo $row->omschrijving; ?>">
                                </td>
                                <td>
                                    <div class="action-buttons">
                                        <button type="submit" class="actionbutton" name="editArtikel" value="edit"><i
                                                    class="fas fa-pen pen"></i></button><?php if ($delete === true) { ?>
                                            <button class="actionbutton" name="deleteArtikel"><i
                                                        class="fas fa-trash-alt trash"></i></button><?php } ?></div>
                                </td>

                            </form>
                        </tr>
                    <?php } else { ?>
                        <tr>
                            <td><?php echo $row->Artikelnummer; ?></td>
                            <td><?php echo $row->Artikelnaam; ?></td>
                            <td><?php echo $row->Aanmaakdatum; ?></td>
                            <td><?php echo $row->omschrijving; ?></td>
                        </tr>
                    <?php } ?>

                <?php }  //close artikelen loop ?>

            </table>
        </div>