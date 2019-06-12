<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <?php wp_head(); ?>
</head>
<body>
    <div class="top-bar">
        <div class="top-bar-left">
            <ul class="menu">
                <li class="menu-text"> <?php the_title(); ?> </li>
            </ul>
        </div>
        <div class="top-bar-right">
            <?php wp_nav_menu(
                array(
                    'theme_location' => 'main-menu',
                )); 
            ?>
            <!-- <div class="dropdown-menu"></div>
            <li class="is-dropdown-submenu-parent">
                <a href="#"> <?php the_title(); ?> </a>
                <ul class="menu">
                    <li><a href="#">Item 1A</a></li>
                    <li><a href="#">Item 1A</a></li>
                    <li><a href="#">Item 1A</a></li>
        </div> -->
    </div>