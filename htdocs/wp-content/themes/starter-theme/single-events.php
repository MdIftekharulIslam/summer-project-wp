<?php

the_post();

get_header();

$post_type = 'events'

?>

<div class="event-content-container">
    
    <div class="grid-container">

        <div class="grid-x">
            <div class="cell medium-4 large-4">

                <h4><a href="<?php echo get_post_type_archive_link($post_type); ?>">All Events</a>

            </div>
        	
            <div class="cell medium-8 large-8"> 
                <div><?php $image = get_field('event_picture');

                            if( !empty($image) ): ?>

                                    <img src="<?php echo $image['sizes']['medium']; ?>" alt="<?php echo $image['alt']; ?>" />

                            <?php endif; ?>
                </div>

                    <div class="event-title">   
                        <h1><?php the_title(); ?></h1>
                    <div>

                    <div class="timebar">
                        <?php echo get_field('starting_time'); ?>
                    </div>

                    <div class="content">
                        <?php the_content(); ?>
                    </div>

                    <div class="location">
                        <?php the_field('location'); ?>
                    </div>

            </div>
                
        </div>   
    </div>  
</div>
                     
 

<?php get_footer(); ?>
