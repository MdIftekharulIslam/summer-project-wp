<?php

$user = get_queried_object();
var_dump( $queried_object );
$user_display_name = $user->display_name;
$acf_key = 'user_' . $user->ID;

// Example of fetching user fields from ACF data.
// $some_field_data = get_field( 'some_field_name', $acf_key );

get_header();

?>

<h1>Employee: <?php esc_html_e( $user_display_name ); ?></h1>

<ul>
    <li><?php esc_html_e( $some_field_data ); ?></li>
</ul>

<?php

get_footer();