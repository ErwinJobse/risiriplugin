<?php
// Set base url and add page specific vars
$base_url = get_permalink();
// Include the toets class from the VIEW.
require_once TOETS_PLUGIN_PLUGIN_INCLUDES_VIEWS_DIR.'/ToetsView.php';
$toets_view = new ToetsView();
// Get the getters
$get_inputs = $toets_view->getGetValues();
// Get form vars
$post_inputs = $toets_view->getPostValues();
// If provided set current file based on the provided link
$current_file = (!empty($get_inputs['link']) ?
    TOETS_PLUGIN_PLUGIN_INCLUDES_VIEWS_DIR. '/'. $get_inputs['link'].'.php' :
    '');
// Add the current page link get param.
if (!empty($get_inputs['link'])){
    $params = array( 'link' => $get_inputs['link']);
    $file_base_url = add_query_arg( $params, $base_url );

} else {
    // Or stick to base url
    $file_base_url = $base_url;
}
// Check add form submission ::
$form_result = $toets_view->check_toets_save_form( $post_inputs );

if ( !is_bool($form_result) && get_class($form_result) == 'WP_Error'){

    // Reshow the form again.
} else{


// Check on error
    if ( !($form_result instanceof WP_Error )){

        $form_result = new WP_Error();
    }

    // Create instance of toets class
    $toets = new toets();

    // Save the toets
    $return = $toets->save($post_inputs['name'],
        $post_inputs['period'],
        $post_inputs['time'],
        $post_inputs['teacher'],
        $post_inputs['level']);

    if ( ! ($return instanceof WP_Error)) {
        // Do not show the toets input file again : Show main page
        $current_file = '';
    }
}
if ( $toets_view->is_submit_toets_add_form($post_inputs) ){
}
if (!empty($current_file) && file_exists( $current_file)){

// Include the link file and show that page.
    include $current_file;
} //*
else if (!empty($current_file) && !file_exists($current_file)){
    // Linked file not found!
    // @todo: Change error
    echo '<span style="color:red">Main view error: FILE NOT FOUND ['.
        $current_file .']</span>';

} //*/
else {
    echo '<span style="color:blue">Test main view</span>';
    ?>
    <div>This is the main view content</div>
    <?php
// Create add link
    $params = array( 'link' => 'toets_add');
// Add params to base url update link
    $link = add_query_arg( $params, $base_url );
    ?>
    <a href="<?php echo $link;?>">Toetsen toevoegen </a><p />

    <?php
// Create event_list link
    $params = array( 'link' => 'toets_list');
// Add params to base url link
    $link = add_query_arg( $params, $base_url );
    ?>
    <a href="<?php echo $link;?>">Toetsen Lijst</a><p />
    <?php
}
?>
