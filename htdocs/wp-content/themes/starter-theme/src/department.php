<?php
/**
 * All code related to departments.
 */

//Custom post
add_action('init', 'st_custom_post_type');
function st_custom_post_type(){
    register_post_type( 'department', 
        array(
            'labels'      => array(
                'name'          => __('Departments'),
                'singular_name' => __('Department'),
            ),
            'public'      => true,
            'has_archive' => true,
            'show_in_nav_menus' => true,
            'supports' => array( 'title', 'editor', 'thumbnail' ),
    ));
}
