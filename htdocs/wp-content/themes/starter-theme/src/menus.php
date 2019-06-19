<?php

function register_my_menu() {
    register_nav_menu('main-menu',__( 'Main Menu' ));
}

add_action( 'init', 'register_my_menu' );

/**
* Foundation 6 TopBar menu walker class.
*
* @see https://github.com/wlcdesigns/foundation-6-wordpress-menu-walkers/blob/master/top-bar.php
*/
class F6TopBarMenuWalker extends Walker_Nav_Menu {
    /*
     * Add vertical menu class and submenu data attribute to sub menus
     */
    
    function start_lvl( &$output, $depth = 0, $args = array() ) {
        $indent = str_repeat("\t", $depth);
        $output .= "\n$indent<ul class=\"vertical menu\" data-submenu>\n";
    }
}