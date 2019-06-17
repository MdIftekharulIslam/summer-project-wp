<?php
/*
Template Name: Employees
*/

$args = [
    'fields' => [
        'ID',
        'display_name',
        'user_email',
    ]
];
	
$users = get_users($args);

the_post();

$staff = get_field( 'staff_list' ); 

get_header();

?>

<p>View our amazing team member from all departments in the organisation. </p>

<?php if (! empty ($users)): ?>

    <div class="grid-container">
        <div class="grid-x grid-padding-x small-up-2 medium-up-3">

            <?php foreach( $users as $users_obj ) :
                $user_key = 'user_' . $users_obj->ID;
                $job_title = get_field( 'job_title', $user_key );
                $phone = get_field( 'phone', $user_key );
                ?>
                <div class="cell">
                    <div class="card">
                        <div class="thumb"><img src="<?php the_field( 'profile_picture', $user_key ); ?>"></div>
                        <div class="card-divider">
                            <span class="name">
                                <a href="<?php echo esc_url( get_author_posts_url( $users_obj->ID ) ); ?>">
                                        <?php esc_html_e( $users_obj->display_name ) ; ?>
                                </a>
                            </span>
                        </div>
                        <div class="card-section">
                            <p class="info vcard">
                                <strong><span class="title"><?php esc_html_e( $job_title ); ?></span></strong>
                                <p class="email"><?php esc_html_e( $users_obj->user_email ); ?></p>
                                <p class="phone"><?php esc_html_e( $phone ); ?></p>  
                            </p>
                        </div>     
                    </div>
                </div>
            <?php endforeach; ?>    
            
        </div>
    </div>
<?php endif; ?> 




