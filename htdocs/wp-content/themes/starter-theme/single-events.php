<?php

the_post();

get_header();

?>
<div class="event-content-container">
    
    <div img src="<?php the_field('event_picture'); ?>" >
    </div>

    <div class="event-title">   
        <h1><?php get_the_title(); ?></h1>
    <div>

    <div class="timebar">
        <?php the_field('starting_time'); ?>
    </div>

    <div class="content">
        <?php get_the_content(); ?>
    </div>

    <div class="location">
        <?php the_field('location'); ?>
    </div>

</div>
    

<?php get_footer(); ?>