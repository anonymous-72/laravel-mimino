<p align="center"><img src="public/logo.png" width="300" alt="Mimino"></p>

## Application Setup

To use database for this app follow these steps:
1. Download <code>laravel_mimino.sql</code> file from <code>"database"</code> directory
2. Import this file either into <code>MySQL Workbench</code> or <code>phpMyAdmin</code>
3. In <code>.env</code> file add next code:
   1. <code>DB_CONNECTION=mysql</code>
   2. <code>DB_HOST=127.0.0.1</code>
   3. <code>DB_PORT=3306</code>
   4. <code>DB_DATABASE=laravel_mimino</code>
   5. <code>DB_USERNAME="YOUR_USERNAME"</code>
   6. <code>DB_PASSWORD="YOUR_PASSWORD"</code>

To make email sending work add next code to <code>.env</code> file:
1. <code>MAIL_MAILER=smtp</code>
2. <code>MAIL_SCHEME=null</code>
3. <code>MAIL_HOST="smtp.gmail.com"</code>
4. <code>MAIL_PORT=587</code>
5. <code>MAIL_USERNAME="YOUR_GMAIL"</code>
6. <code>MAIL_PASSWORD="YOUR_GMAIL_SPECIAL_PASSWORD"</code>
7. <code>MAIL_FROM_ADDRESS="mimino@gmail.com"</code>
8. <code>MAIL_FROM_NAME="${APP_NAME}"</code>


To run the application use next commands:
  1. <code>"php artisan serve"</code> -> Runs Laravel Server
  2. <code>"npm run dev"</code> -> Loads Tailwind Styles
