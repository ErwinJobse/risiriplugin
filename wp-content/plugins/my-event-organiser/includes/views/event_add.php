<?php
if ( function_exists('current_user_can') &&
    !current_user_can('ivs_meo_event_create') )
    die(__('Cheatin&#8217; uh?', 'my_event_organiser'));
// Include the Event class from the model.
require_once MY_EVENT_ORGANISER_PLUGIN_MODEL_DIR . '/Event.php';
$event = new Event();
// Get the list with the event categories
$event_cat_list = $event->getEventCategoryList();
// Set timezone default:
date_default_timezone_set('Europe/Amsterdam');
/*include this section*/
require_once(MY_EVENT_ORGANISER_PLUGIN_INCLUDES_DIR . '/calendar/classes/tc_calendar.php');
?>

<h2><?php echo __('Evenement aanmaken') ?></h2>
<p/>
<h3><?php echo __('Menu') ?></h3>
<form action="<?php echo $file_base_url; ?>" method="post">
    <table>
        <tr>
            <td><?php echo __('Titel:'); ?></td>
            <td><input type="text"
                       name="title" value="<?php echo $post_inputs['title'] ?>"/></td>
        </tr>
        <tr>
            <td><?php echo __('Selecteer evenement categorie:'); ?></td>
            <td><select name="cat">
                    <?php

                    // Create the category drop down
                    foreach ($event_cat_list as $event_cat_obj) {
                        ?>
                        <option value="<?php echo $event_cat_obj->getId(); ?>"><?php
                            echo $event_cat_obj->getName(); ?></option>
                    <?php }
                    ?>
                </select>
            </td>
        </tr>
        <tr>
            <td><?php echo __('Selecteer inschrijvingstype:'); ?></td>
            <td><select name="type">
                    <?php

                    // Create the category drop down
                    foreach ($event_cat_list as $event_cat_obj) {
                        ?>
                        <option value="<?php echo $event_cat_obj->getId(); ?>"><?php
                            echo $event_cat_obj->getDescription(); ?></option>
                    <?php }
                    ?></select></td>
        </tr>

        <tr>
            <td><?php echo __('Evenement datum:<br />'); ?></td>
            <td>
            </td>
        </tr>
        <tr>
        </tr>
        <tr>
          </tr>
        <tr>
            <td><?php echo __('Uiterlijke inschrijfdatum'); ?></td>
            <td><?php
                $myCalendar = new tc_calendar("due_date", true);
                $myCalendar->setIcon($calendar_dir . "images/iconCalendar.gif");
                $myCalendar->setDate(date('d', strtotime($due_date_default))
                    , date('m', strtotime($due_date_default))
                    , date('Y', strtotime($due_date_default)));
                $myCalendar->setPath($calendar_dir);
                $myCalendar->setYearInterval(Date("Y"), intval(Date("Y")) + 10);
                $myCalendar->dateAllow(Date("Y") . '-01-01', (intval(Date("Y")) + 2) . '-01-01');
                // Disable some days:
                //$myCalendar->setSpecificDate(array("2016-04-06", "2016-04-07","2016-04-10"), 0, 'month');
                //$myCalendar->setOnChange("myChanged('test')");
                $myCalendar->writeScript(); ?></td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td><?php echo __('Extra informatie:'); ?></td>
            <td><textarea
                    name="info" rows="4" cols="5"><?php echo
                    $post_inputs['info']; ?></textarea></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><input type="submit" name="add_event"
                       value="<?php echo __('Aanmaken'); ?>"/></td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
    </table>
</form>
