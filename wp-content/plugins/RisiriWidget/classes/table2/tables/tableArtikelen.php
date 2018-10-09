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

                    <td><?php echo $row->Artikelnummer; ?></td>
                    <td><?php echo $row->Artikelnaam; ?></td>
                    <td><?php echo $row->Aanmaakdatum; ?></td>
                    <td><?php echo $row->omschrijving; ?></td>
                            <div class="action-buttons">
                                <button type="submit" class="actionbutton" name="editArtikel" value="edit"><i
                                            class="fas fa-pen pen"></i></button><?php if ($delete === true) { ?>
                                    <button class="actionbutton" name="deleteArtikel"><i
                                                class="fas fa-trash-alt trash"></i></button><?php } ?></div>
                        </td>


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

<script>
    function edit_row(id)
    {
        var name=document.getElementById("name_val"+id).innerHTML;
        var age=document.getElementById("age_val"+id).innerHTML;

        document.getElementById("name_val"+id).innerHTML="<input type='text' id='name_text"+id+"' value='"+name+"'>";
        document.getElementById("age_val"+id).innerHTML="<input type='text' id='age_text"+id+"' value='"+age+"'>";

        document.getElementById("edit_button"+id).style.display="none";
        document.getElementById("save_button"+id).style.display="block";
    }

    function save_row(id)
    {
        var name=document.getElementById("name_text"+id).value;
        var age=document.getElementById("age_text"+id).value;

        $.ajax
        ({
            type:'post',
            url:'modify_records.php',
            data:{
                edit_row:'edit_row',
                row_id:id,
                name_val:name,
                age_val:age
            },
            success:function(response) {
                if(response=="success")
                {
                    document.getElementById("name_val"+id).innerHTML=name;
                    document.getElementById("age_val"+id).innerHTML=age;
                    document.getElementById("edit_button"+id).style.display="block";
                    document.getElementById("save_button"+id).style.display="none";
                }
            }
        });
    }

    function delete_row(id)
    {
        $.ajax
        ({
            type:'post',
            url:'modify_records.php',
            data:{
                delete_row:'delete_row',
                row_id:id,
            },
            success:function(response) {
                if(response=="success")
                {
                    var row=document.getElementById("row"+id);
                    row.parentNode.removeChild(row);
                }
            }
        });
    }

    function insert_row()
    {
        var name=document.getElementById("new_name").value;
        var age=document.getElementById("new_age").value;

        $.ajax
        ({
            type:'post',
            url:'modify_records.php',
            data:{
                insert_row:'insert_row',
                name_val:name,
                age_val:age
            },
            success:function(response) {
                if(response!="")
                {
                    var id=response;
                    var table=document.getElementById("user_table");
                    var table_len=(table.rows.length)-1;
                    var row = table.insertRow(table_len).outerHTML="<tr id='row"+id+"'><td id='name_val"+id+"'>"+name+"</td><td id='age_val"+id+"'>"+age+"</td><td><input type='button' class='edit_button' id='edit_button"+id+"' value='edit' onclick='edit_row("+id+");'/><input type='button' class='save_button' id='save_button"+id+"' value='save' onclick='save_row("+id+");'/><input type='button' class='delete_button' id='delete_button"+id+"' value='delete' onclick='delete_row("+id+");'/></td></tr>";

                    document.getElementById("new_name").value="";
                    document.getElementById("new_age").value="";
                }
            }
        });
    }
</script>