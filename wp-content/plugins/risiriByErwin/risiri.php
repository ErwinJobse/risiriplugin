<?php
/*
Plugin Name: RiSiRi
Description: information
Author: Erwin Jobse
Version: 0.1
*/

//version define
define( 'RiSiRi_VERSION', '0.1' );

//add button wordpress backend
function risiri_admin_settings_setup() {
    add_menu_page('risiri', 'risiri', 'manage_options', 'risiri-settings', 'risiri_admin_settings_page');
}
add_action('admin_menu', 'risiri_admin_settings_setup');


function risiri_admin_settings_page(){
	global $risiri_active_tab;
	$risiri_active_tab = isset( $_GET['tab'] ) ? $_GET['tab'] : 'welcome'; ?>

	<h2 class="nav-tab-wrapper">
	<?php
		do_action( 'risiri_settings_tab' );
	?>
	</h2>
	<?php
		do_action( 'risiri_settings_content' );
}


//tabs link
add_action( 'risiri_settings_tab', 'risiri_tab', 1 );
function risiri_tab(){
	global $risiri_active_tab; ?>
	<a class="nav-tab <?php echo $risiri_active_tab == 'welcome' || '' ? 'nav-tab-active' : ''; ?>" href="<?php echo admin_url( '?page=risiri-settings&tab=welcome' ); ?>"><?php _e( 'Welcome', 'risiri' ); ?> </a>
    <a class="nav-tab <?php echo $risiri_active_tab == 'artikelen' || '' ? 'nav-tab-active' : ''; ?>" href="<?php echo admin_url( '?page=risiri-settings&tab=artikelen' ); ?>"><?php _e( 'artikelen', 'risiri' ); ?> </a>
    <a class="nav-tab <?php echo $risiri_active_tab == 'klanten' || '' ? 'nav-tab-active' : ''; ?>" href="<?php echo admin_url( '?page=risiri-settings&tab=klanten' ); ?>"><?php _e( 'klanten', 'risiri' ); ?> </a>
	<?php
}

?>

<?php
add_action( 'risiri_settings_content', 'risiri_render_options_page');

//tab content
function risiri_render_options_page()
{
    //welcome tab
    global $risiri_active_tab;
    if ('' || 'welcome' == $risiri_active_tab) {
        include "admin/view/welcome.php";

    //artikelen tab
    } else if ('' || 'artikelen' == $risiri_active_tab) {
        include "admin/view/artikelen.php";

    //klanten tab
    } else if ('' || 'klanten' == $risiri_active_tab) {
        include "admin/view/klanten.php";
    }

}

//remove button admin panel
function my_enqueue($hook) {
    // Only add to the edit.php admin page.
    // See WP docs.
    if ('edit.php' == $hook) {
        return;
    }
    wp_enqueue_script('delete', plugin_dir_url(__FILE__) . 'admin/view/delete.js');
}

add_action('admin_enqueue_scripts', 'my_enqueue');

    ?>


