<?php
     global $wp_query;
     $posts = $wp_query->posts;
?>
<?php get_header(); ?>
    <h1>This is the category page.</h1>

    <?php if ( ! empty( $posts ) ) : ?>

        <ul>
            <?php foreach( $posts as $post_obj ) : ?>

                <li>
                    <a href="<?php echo get_the_permalink( $post_obj ); ?>">
                        <?php echo get_the_title( $post_obj ); ?>
                    </a>
                </li>

            <?php endforeach; ?>

        </ul>

    <?php endif; ?>
<?php get_footer(); ?>