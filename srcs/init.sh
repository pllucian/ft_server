#! /bin/bash

mv /tmp/srcs/localhost /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/
rm /etc/nginx/sites-enabled/default
mkdir /var/www/localhost/

tar -xf /tmp/srcs/phpMyAdmin-5.1.0-all-languages.tar.gz -C /var/www/localhost/
rm /tmp/srcs/phpMyAdmin-5.1.0-all-languages.tar.gz
mv /var/www/localhost/phpMyAdmin-5.1.0-all-languages/ /var/www/localhost/phpmyadmin/
mv /tmp/srcs/config.inc.php /var/www/localhost/phpmyadmin/

tar -xf /tmp/srcs/latest.tar.gz -C /var/www/localhost/
rm /tmp/srcs/latest.tar.gz
mv /tmp/srcs/wp-config.php /var/www/localhost/wordpress/

openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 \
-keyout /etc/ssl/private/selfsigned.key -out /etc/ssl/certs/selfsigned.crt \
-subj "/C=RU/ST=Tatarstan/L=Kazan/O=21 School/OU=pllucian/CN=localhost/emailAddress=pllucian@21-school.ru"

service nginx start
service mysql start
service php7.3-fpm start

echo "CREATE DATABASE wordpress;" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' WITH GRANT OPTION;" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password
echo "update mysql.user set plugin='' where user='root';" | mysql -u root --skip-password

chown -R www-data:www-data /var/www/localhost/
rm -r /tmp/srcs/

bash