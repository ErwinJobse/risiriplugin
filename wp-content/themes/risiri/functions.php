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
?>