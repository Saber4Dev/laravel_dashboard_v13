# Admin Dashboard in Laravel 8 with Full Controller User Management

## Overview

Welcome to the Admin Dashboard project in Laravel 8! This repository showcases an elegant and feature-rich Admin Dashboard built with Laravel. It offers a complete user management system with full controller support, making it an ideal starting point for your web application.




## Getting Started
To get started with this project, 
#### Importing an Existing Laravel Project to CPanel
Before you start, make sure you have access to the CPanel and the necessary SSH credentials. We recommend using the VS Code extension called "SSH FS" to access your server via SFTP (SSH File Transfer Protocol). Here are the steps to import your Laravel project to your CPanel:


### Step 1: Set Up Domain and Host Access to SSH

1.Set up your database and create a new user with access privileges for your Laravel project. Note down the database name, username, and password, as you'll need them in the .env configuration.
2.Install the "SSH FS" extension in VS Code or any SFTP client you prefer.
3.Connect to your CPanel server using the SSH credentials provided by your hosting provider.
4.Navigate to the root directory of your CPanel server where your website files are stored.
5.Upload your entire Laravel project folder to the root directory.

follow the steps below:

### Step 2: Clone the Project
Clone the Laravel project from the provided Git repository using the following command:

```bash
git clone https://github.com/Saber4Dev/laravel_dashboard_v13.git
```


### Step 3: Verify PHP Version Compatibility
Before proceeding, verify the PHP version on your server to ensure it is compatible with your Laravel project's requirements. Check the composer.json file to see the required PHP version.
Run the following command on your CPanel terminal to check the PHP version:
```bash
php -v
```
If the PHP version is not compatible, you may need to upgrade it through your hosting provider's CPanel settings.

### Step 4: Install Dependencies
Navigate to your Laravel project directory on the server using the terminal.
Install the project dependencies by running the following commands:

```bash
composer install
composer update
composer dump-autoload --optimize
```


### Step 5: Set Up the .env File
If you haven't already, create a .env file by duplicating the .env.example file:
```bash
cp .env.example .env
```
Open the .env file and update the following variables with your server's configuration:
```bash
APP_NAME=Laravel
APP_ENV=production
APP_KEY= // Generate a unique key here: https://laravel.com/docs/8.x/artisan#generating-a-key
APP_DEBUG=false
APP_URL=http://www.example.com/ // Update with your actual domain

LOG_CHANNEL=stack

DB_CONNECTION=mysql
DB_HOST=127.0.0.1 // Update with your database host
DB_PORT=3306
DB_DATABASE=laravel // Update with your database name
DB_USERNAME=root // Update with your database username
DB_PASSWORD=xxxxxxxxxxx // Update with your database password

```

### Step 6: Generate a New Application Key
Generate a new application key to secure your Laravel application:

```bash
php artisan key:generate
```

### Step 7: Migrate the Database
Run the database migrations to create the necessary tables:
```bash
php artisan migrate
```

### Step 8: Set Proper File Permissions
Ensure that the storage and bootstrap/cache directories have the appropriate write permissions. On CPanel, you can do this through the file manager or using the following commands:
```bash
chmod -R 777 storage
chmod -R 777 bootstrap/cache
```

### Step 9: Configure .htaccess
Create a .htaccess file in the root directory of your Laravel project (if not already present) and add the following content:
```bash
<IfModule mod_rewrite.c>
    RewriteEngine On
    RewriteBase /
    RewriteRule ^$ public/index.php [L]
    RewriteRule ^((?!public/).*)$ public/$1 [L,NC]
</IfModule>
```


### Step 10: Clear Configuration Cache and Optimize
Clear the configuration cache, application cache, and optimize the application:

```bash
php artisan config:clear
php artisan cache:clear
php artisan optimize
// or
php artisan cache:clear & php artisan view:clear & php artisan route:clear & php artisan config:clear & php artisan clear-compiled
composer dump-autoload
php artisan route:cache
```



## Deployment
To deploy the Laravel project on your CPanel server, follow the steps outlined in the previous sections. After completing all the steps, visit www.example.com (replace with your actual domain) in your web browser to access the application.

If you are using a local server like XAMPP or WampServer for development, you can quickly run the project locally by executing the following command in your terminal:
```bash
php artisan serve
```
Once the server is running, you can access the application by visiting http://localhost:8000 in your web browser.



#### Note:
Remember to replace placeholders such as www.example.com, your-database-credentials, and your-project-folder-name with actual values relevant to your setup. Also, be careful when using chmod 777 as it gives full permissions, which may not be secure in some cases. Adjust file permissions as needed based on your server's requirements.





## License

The Laravel framework is open-sourced software licensed under the [MIT](https://choosealicense.com/licenses/mit/)


