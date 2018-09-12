<?php
include MY_EVENT_ORGANISER_PLUGIN_MODEL_DIR . "/EventCategory.php";
// Declare class variable:


$event_category = new EventCategory();

// Set base url to current file and add page specific vars

$base_url = get_admin_url() . 'admin.php';

$params = array('page' => basename(__FILE__, ".php"));
// Add params to base url

$base_url = add_query_arg($params, $base_url);

// Get the GET data in filtered array

$get_array = $event_category->getGetValues();

// Keep track of current action.
$action = FALSE;

if (!empty($get_array)) {
    // Check actions
    if (isset($get_array['action'])) {
        $action = $event_category->handleGetAction($get_array);
    }
}

// Get the POST data in filtered array
$post_array = $event_category->getPostValues();
// Check the POST data
if (!empty($post_array)) {

    // Check the add form:
    $add = FALSE;
    if (isset($post_array['add'])) {
        // Save event categorie
        $event_category->save($post_array);
        if ($result) {
            // Save was succesfull
            $add = TRUE;
        } else {
            // Indicate error
            $error = TRUE;
        }
    }
    // Check the update form:
    if (isset($post_array['update'])) {
        // Save event category
        $event_category->update($post_array);
    }
}
?>
<div class="wrap">
   KLanten CRUD.<br/>


    <?php
    echo($add ? "<p>Klant toegevoegd</p>" : "");
    // Check if action == update : then start update form
    echo(($action == 'update') ? '<form action="' . $base_url . '"method="post">' : '');
    ?>
    <table>
        <caption>Klanten</caption>
        <thead>
        <tr>
            <th width="10">Id</th>
            <th width="150">Naam</th>
            <th width="200">Achternaam</th>
        </tr>

        </thead>
        <?php
        if ($event_category->getNrOfEventCategories() < 1) {
            ?>
            <tr>
                <td colspan="3">Begin klanten toe te voegen
            </tr>
        <?php } else {
            $cat_list = $event_category->getEventCategoryList();

            //** Show all event categories in the tabel

            foreach ($cat_list as $event_cat_obj) {
                // Create update link
                $params = array('action' => 'update', 'id' => $event_cat_obj->getId());
                // Add params to base url update link
                $upd_link = add_query_arg($params, $base_url);
                // Create delete link
                $params = array('action' => 'delete', 'id' => $event_cat_obj->getId());
                // Add params to base url delete link
                $del_link = add_query_arg($params, $base_url);
                ?>
                <tr>
                    <td width="10"><?php echo $event_cat_obj->getId(); ?></td>
                    <?php
                    // If update and id match show update form
                    // Add hidden field id for id transfer
                    if (($action == 'update') && ($event_cat_obj->getId() == $get_array['id'])) {
                        ?>
                        <td width="180"><input type="hidden" name="id" value="<?php
                            echo $event_cat_obj->getId(); ?>">
                            <input type="text" name="name" value="<?php
                            echo $event_cat_obj->getName(); ?>"></td>
                        <td width="200"><input type="text" name="description" value="<?php
                            echo $event_cat_obj->getDescription(); ?>"></td>
                        <td colspan="2"><input type="submit" name="update" value="Updaten"/></td>
                    <?php } else { ?>

                        <td width="180"><?php echo $event_cat_obj->getName(); ?></td>
                        <td width="200"><?php echo $event_cat_obj->getDescription(); ?></td>



                        <?php if ($action !== 'update') {
                            // If action is update don’t show the action button
                            ?>
                            <td><a href="<?php echo $upd_link; ?>">bewerken</a></td>
                            <td><a href="<?php echo $del_link; ?>" style="color: red">verwijderen</a></td>
                            <?php
                        }
                        ?>

                    <?php }
                    ?>
                </tr>
            <?php }
        } ?>
    </table>
    <?php
    // Check if action = update : then end update form
    echo(($action == 'update') ? '</form>' : '');
    //Finally add the new entry line only if no update action
    if ($action !== 'update') {
        ?>
        <form action="<?php echo $base_url; ?>" method="post">
            <tr>
                <table>
                    <tr>
                        <td colspan="2"><input type="text" name="name"></td>
                        <td><input type="text" name="description"></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" name="add" value="Toevoegen"/>
                        </td>
                    </tr>
                </table>
        </form>
        <?php
    } // if action !== update
    ?>
</div>