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

?>

<h2><?php echo __('Evenement aanmaken') ?></h2>
<p/>
<h3><?php echo __('Menu') ?></h3>
<form action="<?php echo $file_base_url; ?>" method="post">
    <table>
        <tr>
            <td><?php echo __('Voornaam:'); ?></td>
            <td><input type="text"
                       name="title" value="<?php echo $post_inputs['title'] ?>"/></td>
        </tr>
        <tr>
            <td><?php echo __('Achternaam'); ?></td>
            <td><input type="text"
                       name="title" value="<?php echo $post_inputs['title'] ?>"/></td>
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
