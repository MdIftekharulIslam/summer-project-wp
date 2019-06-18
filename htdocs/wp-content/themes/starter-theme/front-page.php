<?php
/**
 * 
 * The base index file.
 */

the_post();

$hero_image_arr = get_field( 'hero_image' );
$hero_image_url = $hero_image_arr['sizes']['large'] ?? '';
$hero_title = get_field( 'hero_title' );
$organisation_description = get_field( 'organisation_description' );

$post_query = new WP_Query( [
    'post_type' => 'post',
    'posts_per_page' => 4,
    'post_status' => 'publish',
] );

/* TODO: Complete the events query.
$now = ''; // TODO: when is now and in what format?

$event_query = new WP_Query( [
    'post_type' => 'event',
    'posts_per_page' => 6,
    'post_status' => 'publish',
    'meta_query' => [
        
    ]
] );

( '2018-06-17 22:24:55' > '2018-06-17 22:59:59' ) === false

'bbc' > 'bad'
*/



?>

<?php get_header(); ?>

<!-- The hero -->

<?php if ( $hero_image_url ) : ?>
    <section class="hero" style="background-image:url(<?php echo $hero_image_url; ?>);">
            <div class="hero-inner">
                <h1><?php esc_html_e( $hero_title ); ?></h1>
                <a class="btn" href="#organisation-description">About Us</a> 
                
            </div>

    </section>

<?php endif; ?>


<!-- The Organisation Description -->

<section id="organisation-description">
    <h2>Organisation Description</h2>
    <p><?php esc_html_e( $organisation_description ); ?></p>

</section>


<!-- The recent post loop -->

<?php if ( $post_query->have_posts() ) : ?>
    <section>
        <div class="grid-container">
            <div class="grid-x grid-margin-x">
                <div class="cell">
                    <h2>Recent News Articles</h2>
                </div>
            </div>
            <div class="grid-x grid-padding-x small-up-2 medium-up-4">
                
                    <?php while ( $post_query->have_posts() ) : $post_query->the_post(); ?>
                        <div class="cell">
                            <div class="card">
                                <?php echo get_the_post_thumbnail(); ?>
                                
                                <div class="card-divider"> 
                                <strong><?php the_title(); ?></strong>    
                                </div>
     
                                <div class="card-section">
                                <?php the_excerpt(); ?>
                                    
                                </div>
                            </div>
                        </div>
                    <?php endwhile; ?>
            </div>
        </div>

    </section>
<?php endif; ?>

<?php get_footer(); ?>



<!-- The Event loop -->



<?php

$args = [
    'post_type' => 'event',
];


/* $event_start_date = get_field( 'start_date', true );
$event_end_date = get_field( 'end_date', true );
$event_venue = get_field( 'event-venue', true );
 */

//the query
$event_query = new WP_Query ( $args ); 

if ( $event_query->have_posts() ) : ?>

    <div class="grid-container">
        <div class="grid-x grid-padding-x small-up-2 medium-up-3">
    
        <?php while ( $event_query->have_posts() ) : $event_query->the_post(); ?>
            <div class="cell">
                <div class="card">
                    <?php get_the_post_thumbnail(); ?>
                    <div class="card-section">
                    <h4><?php the_title(); ?></h4>
                    <?php get_post_field( 'start_date')  ?>
                    <?php the_excerpt(); ?>
                    </div>
                </div>
            </div>
        <?php endwhile; ?>

        </div>
    </div>

<?php 

endif;