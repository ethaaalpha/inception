cd /var/www/wordpress

wp core download --path=. --allow-root

wp config create --allow-root 	--dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWORD --dbhost=$DB_HOST

wp db create --allow-root

wp core --allow-root install 	--url=$DOMAIN --title=$WP_TITLE \
--admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_MAIL
								

# Move the sample config file to the actual config file
# mv /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php

# Edit configuration file
# sed -i "s/'votre_nom_de_bdd'/'${DB_NAME}'/g" /var/www/wordpress/wp-config.php
# sed -i "s/'votre_utilisateur_de_bdd'/'${DB_USER}'/g" /var/www/wordpress/wp-config.php
# sed -i "s/'votre_mdp_de_bdd'/'${DB_PASSWORD}'/g" /var/www/wordpress/wp-config.php
# sed -i "s/'localhost'/'${DB_HOST}'/g" /var/www/wordpress/wp-config.php


php-fpm7.4 -F -R