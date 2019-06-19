<?php


get_header();

?>

<h1>Events</h1>

<?php if ( have_posts() ) : ?>

    <div class="grid-container">
        <div class="grid-x grid-padding-x small-up-2 medium-up-3">
    
		<?php while ( have_posts() ) : the_post();
			$event_pic = get_field('event_picture');
		?>
            <div class="cell">
                <div class="card">
					<?php if( !empty($event_pic) ): ?>

						<img src="<?php echo $event_pic['sizes']['medium']; ?>" alt="<?php echo $event_pic['alt']; ?>" />

					<?php endif; ?>
                    <div class="card-section">
                    <h4><a href="<?php echo esc_url( get_the_permalink() ); ?>">
						<?php the_title(); ?></a>
					</h4>
					<h5><a href="<?php echo esc_url( get_the_permalink() ); ?>">
						<?php get_field('starting_time'); ?></a>
					</h5>

					<?php echo excerpt(11); ?>

                    </div>
                </div>
            </div>
        <?php endwhile; ?>

        </div>
    </div>

<?php 

endif; // endif for The Loop


get_footer();