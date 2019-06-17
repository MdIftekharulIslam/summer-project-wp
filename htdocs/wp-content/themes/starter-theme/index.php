<?php
/**
 * The base index file.
 */

?>
<?php get_header(); ?>

    <div>
        <div >
            <?php
            if ( have_posts() ) :
                while ( have_posts() ) : the_post(); ?>
                    <h1><?php the_field('custom_title'); ?></h1>
                    <div class="cell">
                        <div class="card">
                            <!-- <div class="card-divider"> 
                                <a href="<?php echo get_permalink(); ?>">
                                    <?php the_title(); ?> 
                                </a> 
                            </div> -->
                                <?php echo get_the_post_thumbnail(); ?>

                            
                            <div class="card-section">
                                
                                <!-- <h4><?php the_title(); ?></h4> -->
                                <?php the_excerpt(); ?>
                                <?php the_content(); ?>
                                
                            </div>
                        </div>
                    </div>
                <?php endwhile;
            endif; ?>
        </div>
    </div>

<?php get_footer(); ?>