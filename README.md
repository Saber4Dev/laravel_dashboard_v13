# Admin Dashboard in Laravel 8 with Full Controller User Management

## Overview

Welcome to the Admin Dashboard project in Laravel 8! This repository showcases an elegant and feature-rich Admin Dashboard built with Laravel. It offers a complete user management system with full controller support, making it an ideal starting point for your web application.




## Getting Started
To get started with this project, follow the steps below:

### Step 1: Clone the Project
Begin by cloning the Laravel 8 project from GitHub using the following command:

```bash
git clone https://github.com/Saber4Dev/laravel_dashboard_v13.git
```


### Step 2: Composer Update
Next, update the project's dependencies by executing the following command:

```bash
composer update
```

### Step 3: Configure the Database
Open the .env file in your project root directory and update the database credentials accordingly:

```bash
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=your_db
DB_USERNAME=root
DB_PASSWORD=#your_database_password
```
Additionally, if you plan to send emails for password recovery, set up your email credentials as follows:

```bash
MAIL_DRIVER=smtp
MAIL_HOST=smtp.gmail.com
MAIL_PORT=587
MAIL_USERNAME=your_email
MAIL_PASSWORD='your_email_password'
MAIL_ENCRYPTION=tls
```

### Step 4: Run Migrations
With the configuration in place, run the migration command to set up the database:

```bash
php artisan migrate
```

### Step 4: Serve the Application
With the configuration in place, run the migration command to set up the database:

```bash
php artisan serve
```

Visit localhost:8000 in your web browser to access the application.


## Deployment

To deploy this project run visit 

```bash
  localhost:8000 
```




## License

The Laravel framework is open-sourced software licensed under the [MIT](https://choosealicense.com/licenses/mit/)


