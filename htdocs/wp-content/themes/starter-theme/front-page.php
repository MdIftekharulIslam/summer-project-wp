<?php
/**
 * 
 * The base index file.
 */

the_post();

$hero_image_arr = get_field( 'hero_image' );
$hero_image_url = $hero_image_arr['sizes']['large'] ?? '';

$post_query = new WP_Query( [
    'post_type' => 'post',
    'posts_per_page' => 6,
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

<?php if ( $hero_image_url ) : ?>
    <section class="hero">

    <img class="hero__image" src="<?php echo esc_url( $hero_image_url ); ?>">
    </section>
<?php endif; ?>

<?php if ( $post_query->have_posts() ) : ?>
    <section>
        <div class="grid-container">
            <div class="grid-x grid-margin-x">
                <div class="cell">
                    <h2>Recent posts</h2>
                </div>
            </div>
            <div class="grid-x grid-padding-x small-up-2 medium-up-3">
                
                    <?php while ( $post_query->have_posts() ) : $post_query->the_post(); ?>
                        <div class="cell">
                            <div class="card">
                                <div class="card-divider"> 
                                    <?php echo get_the_post_thumbnail(); ?>  
                                </div>
                                
                                <div class="card-section">
                                    
                                <h3><?php the_title(); ?></h3>
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