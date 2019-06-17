<?php
/**
 * The base index file.
 */

?>
<?php get_header(); ?>
<section>
    <div>
        <img src="" alt="">
    </div>
</section>
<p></p>
<Section>

    <div class="grid-container">
        <div class="grid-x grid-padding-x small-up-2 medium-up-3">
            <?php
            if ( have_posts() ) :
                while ( have_posts() ) : the_post(); ?>
                    <h1><?php the_field('custom_title'); ?></h1>
                    <div class="cell">
                        <div class="card">
                            <div class="card-divider"> 
                                <a href="<?php echo get_permalink(); ?>">
                                    <?php the_title(); ?>
                                    <?php echo get_the_post_thumbnail(); ?>
                                </a>
                            </div>
                            
                            <div class="card-section">
                                
                               
                                <?php the_excerpt(); ?>
                                
                            </div>
                        </div>
                    </div>
                <?php endwhile;
            endif; ?>
        </div>
    </div>

</Section>