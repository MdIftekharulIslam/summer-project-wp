<?php wp_footer(); ?>
    
    <div>
        <footer>
            <div class="top-bar">
                <div class="top-bar-left">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/img/logo.png" alt="logo">
                        <h6>Pohjoisesplanadi 8, 00160 Helsinki, Finland</h6>
                        <h6>050 557 4041</h6>
                        <small>&copy; All rights reserved 2019</small>        
                </div>   
 
                <div class="top-bar-right">    
                    <p>Quick Links</p>

                    <?php wp_nav_menu(
                        array(
                            'theme_location' => 'footer-menu',
                            'menu_class' => 'footer-menu',
                        )); 
                    ?>
                </div> 
                
            </div>        
        </footer>
        
    </div>
</body>
</html>