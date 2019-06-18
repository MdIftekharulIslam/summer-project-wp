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
            
        </div>
        <div class="top-bar-right">
            <?php wp_nav_menu(
                array(
                    'theme_location' => 'main-menu',
                    'walker' => new F6TopBarMenuWalker(),
                    'container' => false,
                    'menu_class' => 'dropdown menu',
                    'items_wrap'      => '<ul id="%1$s" class="%2$s" data-dropdown-menu>%3$s</ul>',
                )); 
            ?>
        </div>
    </div>