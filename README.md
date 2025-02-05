# Car-Showroom-Management-System
The Car Showroom Management System is a web-based application designed to manage car showroom operations, including inventory management, vehicle sales, and customer orders. Built with Core Java Concepts(java EE) and integrated with a MySQL database, the system allows admins to manage vehicle details, customer information, and sales transactions seamlessly.

## Features
#### Admin Dashboard: 
Admins can add, update, and delete car inventory, including details such as car model, brand, and price.
#### Vehicle Listing: 
Users can browse available cars, search by model, and view detailed information.
#### Customer Order Management: 
Users can submit their car purchase requests with details like car ID, brand, and delivery address.
#### User Registration & Login: 
Users can create accounts, log in, and view available cars, while admins have their own login to manage the system.

## Technologies Used
#### Backend: 
Core java, Java EE
#### Frontend: 
HTML, CSS, JavaScript, JSP, JSF
#### Database: 
MySQL
### Development Tools: 
Red Hat CodeReady Studio

## Installation and Setup
### Prerequisites
##### Install Java 8 or higher.
##### Install MySQL Server and ensure it is running.
##### Install a Java IDE (Eclipse or Red Hat CodeReady Studio).

## Clone the Repository
### Run the following commands

#### git clone https://github.com/kiran-kumar-29/Car-Showroom-Management-System.git
#### cd Car-Showroom-Management-System

## Configure the Database
### To Create the Database and Database tables
#### \Car_Showroom_Management_System\src\main\java\database\CreateDatabase.java
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/";
    private static final String USER = "root";
    private static final String PASSWORD = "password";
    private static final String DATABASE_NAME = "carshowroom";

##### edit this lines of code with a database name which you want and password of your MySql.
##### After edit run this file as java application to create a database with tables.

### This file perform the CRUD operations and stores all the data into Database
#### \Car_Showroom_Management_System\src\main\java\database\DatabaseConnection.java
    private static final String dbURL = "jdbc:mysql://localhost:3306/carshowroom"; // Database URL
    private static final String dbUser = "root"; // Database username
    private static final String dbPassword = "password"; // Database password
##### Now edit this lines of code with your given database and  with your MySql database password to store the data in database.
