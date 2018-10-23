<?php


add_theme_support( 'custom-logo' );

show_admin_bar(true);
wp_enqueue_style('style', get_stylesheet_uri());

function register_menus() {
    register_nav_menus(
        array(
            'left-menu' => __( 'Left Menu' ),
            'right-menu' => __( 'Right Menu' )
        )
    );
}
add_action( 'init', 'register_menus' );

add_action('admin_menu', 'remove_built_in_roles');

function remove_built_in_roles() {
    global $wp_roles;

    $roles_to_remove = array('subscriber', 'contributor', 'author', 'editor');

    foreach ($roles_to_remove as $role) {
        if (isset($wp_roles->roles[$role])) {
            $wp_roles->remove_role($role);
        }
    }
}

function change_role_name() {
    global $wp_roles;

    if ( ! isset( $wp_roles ) )
        $wp_roles = new WP_Roles();

    //You can list all currently available roles like this...
    //$roles = $wp_roles->get_names();
    //print_r($roles);

    //You can replace "administrator" with any other role "editor", "author", "contributor" or "subscriber"...
    $wp_roles->roles['administrator']['name'] = 'Beheerder';
    $wp_roles->role_names['administrator'] = 'Beheerder';
}
add_action('init', 'change_role_name');

// custom admin style sheet
function my_admin_head() {
    echo '<link href="'.get_stylesheet_directory_uri().'/wp-admin.css" rel="stylesheet" type="text/css">';
}
add_action('admin_head', 'my_admin_head');


//Widget Register
$args = array(
    'name'          => __( 'Sidebar name', 'theme_text_domain' ),
    'id'            => 'unique-sidebar-id',    // ID should be LOWERCASE  ! ! !
    'description'   => '',
    'class'         => '',
    'before_widget' => '<li id="%1$s" class="widget %2$s">',
    'after_widget'  => '</li>',
    'before_title'  => '<h2 class="widgettitle">',
    'after_title'   => '</h2>' );
register_sidebar( $args );
function arphabet_widgets_init()
{
//Full page Widgets
    register_sidebar(array(
        'name' => 'Full Page Widget',
        'id' => 'full-page-widget',
        'description' => 'Widget covering full page',
        'before_widget' => '<div class="widget-1">',
        'after_widget' => '</div>',
        'before_title' => '<h3 class="widget1-title">',
        'after_title' => '</h3>',
    ));
}
//logo universele link naar wp-admin
add_filter( 'get_custom_logo', 'add_custom_logo_url' );
function add_custom_logo_url() {
    $custom_logo_id = get_theme_mod( 'custom_logo' );
    $html = sprintf( '<a href="%1$s" class="custom-logo-link" rel="home" itemprop="url">%2$s</a>',
            esc_url(admin_url()),
            wp_get_attachment_image( $custom_logo_id, 'full', false, array(
                'class'    => 'custom-logo',
            ) )
        );
    return $html;   
} 
?>