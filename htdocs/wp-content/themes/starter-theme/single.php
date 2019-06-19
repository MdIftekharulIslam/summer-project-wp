<?php 

/* $user = get_queried_object();
$user_display_name = $user->display_name;
$acf_key = 'user_' . $user->ID;
$employees = get_field( 'employees', $acf_key ); */

get_header(); ?>


<?php the_post(); ?>
<?php the_post_thumbnail(); ?>
    <h1><?php the_title();?></h1>
         <?php the_content();?>


<!-- <p>Employee: <?php esc_html_e( $user_display_name ); ?></p> 
<?php esc_html_e( $employees ); ?>  -->     


<?php get_footer(); ?>