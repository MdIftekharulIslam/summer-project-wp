<?php
 function author_role_template( $templates = '' ) { 
     $author = get_queried_object(); 
     $role = $author->roles[0]; 
     if ( ! is_array( $templates ) && ! empty( $templates ) ) { 
         $templates = locate_template( array( "author-$role.php", $templates ), false ); 
     } elseif ( empty( $templates ) ) { 
         $templates = locate_template( "author-$role.php", false ); 
     } else { 
         $new_template = locate_template( array( "author-$role.php" ) ); 
         if ( ! empty( $new_template ) ) { 
             array_unshift( $templates, $new_template ); 
         } 
     } 
     return $templates; 
 } 
 add_filter( 'author_template', 'author_role_template' );