<?php
/**
 * The base index file.
 */

?>

<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <?php wp_head(); ?>
</head>
<body>

<?php

$args = [
    'post_type' => 'users' 
];


//the query
$users_query = new WP_Query ( $args ); 

if ( $users_query->have_posts() ) : ?>

        <?php while ( $users_query->have_posts() ) : $user_query->the_post(); ?>
            <a href="<?php echo esc_url( get_permalink() ); ?>"><?php the_title(); ?>
            </a>
            <?php get_the_post_thumbnail(); ?>
            <?php get_queried_object(); ?>
            
    
        <?php endwhile; ?>

        </div>
    </div>

<?php endif; ?>

<?php wp_footer(); ?>

</body>
</html>