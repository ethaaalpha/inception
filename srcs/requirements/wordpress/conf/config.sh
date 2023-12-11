cd /var/www/wordpress

wp core download --path=. --allow-root

wp config create --allow-root 	--dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWORD --dbhost=$DB_HOST

wp db create --allow-root

wp core --allow-root install 	--url=$DOMAIN --title=$WP_TITLE \
--admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_MAIL

wp user create --allow-root $WP_BASIC_USER $WP_BASIC_MAIL --user_pass=$WP_BASIC_PASSWORD

php-fpm7.4 -F