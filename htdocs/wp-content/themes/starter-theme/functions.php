<?php
/**
 * The main functions file loading all source files.
 *
 * This file should only contain include statements!
 */

// Define the theme version. Bump the version up to update client-side caches.
define( 'ST_THEME_VERSION', '0.0.0' );

include_once get_template_directory() . '/src/setup.php';
include_once get_template_directory() . '/src/menus.php';
include_once get_template_directory() . '/src/assets.php';
include_once get_template_directory() . '/src/acf.php';
include_once get_template_directory() . '/src/department.php';
include_once get_template_directory() . '/src/read.php';
include_once get_template_directory() . '/src/events.php';
include_once get_template_directory() . '/src/template-helpers.php';

