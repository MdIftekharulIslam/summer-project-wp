<?php get_header(); ?>

<?php the_post(); ?>
        
<h1><?php the_title(); ?></h1>
        
<?php the_content(); ?>

<?php the_field('custom_title'); ?>

<?php get_footer(); ?>