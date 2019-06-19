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

//Complete the events query.
// TODO: when is now and in what format?

// find date time now
    $date_now = date('Y-m-d H:i:s');
    
$event_query = new WP_Query( [
    'post_type' => 'events',
    'posts_per_page' => 3,
    'post_status' => 'publish',
    'meta_query' => [
        array(
            'key' => 'starting_time',
            'compare' => '>=',
            'value'=> $date_now,
            'type'=> 'DATETIME'
        )
    ],
    'order'				=> 'ASC',
	'orderby'			=> 'meta_value',
	'meta_key'			=> 'starting_time',
	'meta_type'			=> 'DATETIME'
] );

//( '2018-06-17 22:24:55' > '2018-06-17 22:59:59' ) === false



/* 
function get_upcoming_events($amount = 10) {
    // find date time now
    $date_now = date('Y-m-d H:i:s');
    $time_now = strtotime($date_now);
    // find date and time bigger than past moment
    $date_time_now = date($date_now, $time_now);
    // query events
    $events = get_posts(array(
        'posts_per_page'    => $amount,
        'post_type'            => 'event',
        'meta_query'         => array(
            array(
                'key'            => 'starting_time',
                'compare'        => '>=',
                'value'            => $date_time_now,
                'type'            => 'DATETIME'
            )
        ),
        'order'                => 'ASC',
        'orderby'            => 'meta_value',
        'meta_key'            => 'starting_time',
        'meta_type'            => 'DATETIME'
    ));
    return $events;
 } */
 


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
<h2>Recent News Articles</h2>
    <section>
        <div class="grid-container">
            <div class="grid-x grid-margin-x">
                <div class="cell">  
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

<!-- The Event loop -->
<?php
if ( $event_query->have_posts() ) : ?>
<h2>Upcoming Events</h2>

    <div class="grid-container">
        <div class="grid-x grid-padding-x small-up-2 medium-up-3">
        
            <?php while ( $event_query->have_posts() ) : $event_query->the_post(); ?>
                <div class="cell">
                
                    <div class="card">
                        <?php get_the_post_thumbnail(); ?>
                        <div class="card-section">
                        <h4><?php the_title(); ?></h4>
                        <?php the_excerpt(); ?>
                        </div>
                    </div>
                </div>
            <?php endwhile; ?>

        </div>
    </div>

<?php 

endif;

get_footer(); ?>