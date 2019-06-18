<?php

function new_excerpt_more($more) {
       global $post;
	return '<a class="moretag" href="'. get_permalink($post->ID) . '"> [Read the full article]</a>';
}
add_filter('excerpt_more', 'new_excerpt_more');

// Filter except length to 35 words.
// tn custom excerpt length
function tn_custom_excerpt_length( $length ) {
return 25;
}
add_filter( 'excerpt_length', 'tn_custom_excerpt_length', 999 );