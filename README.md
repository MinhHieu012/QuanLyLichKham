## Setup in Local

## Install enviroments

[XAMPP (8.1.25 / PHP 8.1.25)](https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.1.25/xampp-windows-x64-8.1.25-0-VS16-installer.exe)

[Composer](https://getcomposer.org/download/)


## Clone project

Go to "C:\xampp\htdocs" turn on CMD/Terminal and type

> git clone https://github.com/MinhHieu012/QuanLyLichKham.git

> cd QuanLyPhongKham

If you use VSCode open project with this command

> code .

## Import Database

Get Database file on project folder: [tkudpm.sql]

And upload it in phpMyAdmin

Rename file 

> .env.example

to

> .env

And change line 11 - 16 (To match your port database and set again database name, username and password)

```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3360
DB_DATABASE=tkudpm
DB_USERNAME=root
DB_PASSWORD=
```

## Run these command 1 time before run the project

> composer install

> composer update

> php artisan key:generate

## Run project

> php artisan serve

## Admin Account

Username: admin

Password: 88866632664Hieu@

## If you have this error

> SQLSTATE[HY000] [1045] Access denied for user 'root'@'localhost' (using password: NO)

Then move to folder bootstrap/cache then delete config.php file
