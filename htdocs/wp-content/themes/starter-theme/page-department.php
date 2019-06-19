<?php
/*
Template Name: Departments
*/

$department_image_arr = get_field( 'department_employee' );
$department_image_url = $hero_image_arr['sizes']['small'] ?? '';

get_header();

the_post(); 

/* The Department loop */


$args = [
    'post_type' => 'department',
];


//the query
$department_query = new WP_Query ( $args ); 

if ( $department_query->have_posts() ) : ?>
<div>
    <?php while ( $department_query->have_posts() ) : $department_query->the_post(); ?>
        
        <div><span><?php the_post_thumbnail(); ?></span><a href="<?php echo esc_url( get_permalink() ); ?>"><?php the_title(); ?> 
        </a></div>      
    <?php endwhile; ?>
</div>
    


<?php 

endif;

get_footer(); ?>