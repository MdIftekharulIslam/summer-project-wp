<?php

$user = get_queried_object();

$user_display_name = $user->display_name;
$acf_key = 'user_' . $user->ID;
$user_email = $user->user_email;

$job_title = get_field( 'job_title', $acf_key );
$phone = get_field( 'phone', $acf_key );
$profile_picture = get_field( 'profile_picture', $acf_key );
$about_the_employee = get_field( 'about_the_employee', $acf_key );

// Example of fetching user fields from ACF data.
// $some_field_data = get_field( 'some_field_name', $acf_key );

get_header();

?>

<h1>Employee: <?php esc_html_e( $user_display_name ); ?></h1>

<ul>
    <li><img class="my-image-class" src="<?php esc_html_e( $profile_picture ); ?>"></li>
    <li><?php esc_html_e( $job_title ); ?></li>
    <li><?php esc_html_e( $phone ); ?></li>
    <li><?php esc_html_e( $user_email ); ?></li>
    <li><?php esc_html_e( $about_the_employee); ?></li>
</ul>


<?php if (have_posts() ) : ?>

<hr>
<?php
// the loop
while (have_posts() ) :the_post(); 
?>
<a href="<?php echo esc_url( get_permalink() ); ?>"><?php the_title(); ?>
</a>
<?php endwhile; ?>

<?php

// next_posts_link() usage with max_num_pages
next_posts_link( 'Older Entries');
previous_posts_link( 'Newer Entries' );

// clean up after the query and pagination
wp_reset_postdata(); 
?>

<?php else:  ?>
<p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
<?php endif;

get_footer();