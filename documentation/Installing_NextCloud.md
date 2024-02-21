# Installing NextCloud server on Ubuntu

In this file, we will discuss about installing NextCloud server on Ubuntu 22.04. Here we discuss about the installation process we followed, for any issues refer to FAQ.md file.

Step-1: Run update and upgrade before starting any installation
    ```console
     sudo apt update && sudo apt upgrade -y
    ```
Step-2: Install dependencies
   ```console
   sudo apt install apache2 mariadb-server libapache2-mod-php php-gd php-mysql \
php-curl php-mbstring php-intl php-gmp php-bcmath php-xml php-imagick php-zip
   ```
Step-3: Enable, start and check the status of apache2 server
   ```console
    sudo systemctl enable apache2
    sudo systemctl start apache2
    systemctl status apache2
   ```

Step-4: Enable, start and check the status of mariadb server
   ```console
    sudo systemctl enable mariadb
    sudo systemctl start mariadb
    systemctl status mariadb
   ```
Step-5: Setup database for server by running mysql shell
   ```console
    mysql
   ```
   ```console
    CREATE DATABASE nextcloud;
   ```
   ```console
    GRANT ALL PRIVILEGES ON nextcloud.* TO 'nextcloud'@'localhost' IDENTIFIED BY 'P@ss123!';
   ```
   > Set the permissions without restarting mysql server
   ```console
    FLUSH PRIVILEGES;
   ```
   ```console
    EXIT;
   ```
Step-6: Change the directory and download latest server image
   ```console
    cd /var/www/html
    wget https://download.nextcloud.com/server/releases/nextcloud-28.0.2.zip
   ```
    > Once the download is done, extract the files
    
  ```console
    unzip nextcloud-28.0.2.zip
  ```
Step-7: Set proper permission for the nextcloud server
  ```console
     chown -R www-data:www-data /var/www/html/nextcloud
  ```
Step-8: Create nextcloud config
  ```console
     touch /etc/apache2/sites-available/nextcloud.conf
  ```
Step-9: Nextcloud config
    ```console
     sudo gedit /etc/apache2/sites-available/nextcloud.conf
     ```
     > Enter the below code into the file
       If you have your own domain purchased, you can replace it with your domain name
     
     ```console
      <VirtualHost *: 80>
      ServerName kushalmcprj.com
      DocumentRoot /var /www/html/nextcloud

      <Directory /var/www/html/nextcloud/>
        Require all granted
        Options FollowSymlinks MultiViews
        AllowOverride All
        <IfModule mod_dav.c>
        Dav off
        </IfModule>
      </Directory>
     ErrorLog /var/Log/apache2/kushalmcprj.com.error_log
     CustomLog /var/log/apache2/kushalmcprj. com.access_log common </VirtualHost>
    ```
  > Save the file
Step-10: Run the following commands to run the server hosting
    ```console
      sudo a2ensite nextcloud.conf
      systemctl reload apache2
      sudo a2enmod rewrite
      systemctl restart apache2
      a2dissite 000-default.conf
      systemctl reload apache2
      apachectl -t        # To check the syntax, if it is error free
    ```
Step-11: Open NextCloud via browser
   > Open browser and enter the IP address of the VM running the server
     Create an admin user name and password, remember this as you might need it later to access its core features
     Enter the database details, and the password. These are set during database creation in mysql
     Add users and set permissions as needed


