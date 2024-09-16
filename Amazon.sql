create database Amazon;
use Amazon;

-- 1) Sign Up
-- Stores user information for account creation.
create table Sign_up (
    email varchar(255) primary key not null,
	user_id int,
    User_name varchar(255) ,      
    password varchar(255),           
    mobile_phone varchar(20)
);

-- 2) Log In
-- Stores login information, email and password must match the Sign_up table.
create table Log_in (
    user_id int,
    password varchar(255),
	email varchar(255) ,
    foreign key (email) references Sign_up(email)
);

-- 3) User Table
-- Stores additional user details and payment information.
create table User_Table (
    user_id int primary key not null,
    User_name varchar(255),
    email varchar(255) ,       
    mobile_phone varchar(20),
    Payment_method varchar(255),   
    Transaction_Status varchar(255),
    foreign key (email) references Sign_up(email)
);

-- 4) Payments
-- Stores user payment details.
create table Payments (
    Payment_id int primary key not null,
    user_id int,
    Payment_method varchar(255),
    CardNumber varchar(20),
    foreign key (user_id) references User_Table(user_id)
);

-- 5) Orders
-- Stores user orders and payment information.
create table Order_Table (
    Order_id int primary key not null,
    user_id int,
    Order_date varchar(255),
    Shipping_Address varchar(255),
    Payment_id int,
    foreign key (user_id) references User_Table(user_id),
    foreign key (Payment_id) references Payments(Payment_id)
);

-- 6) Categories
-- Defines product categories.
create table Category (
    Category_id int primary key not null,
    CategoryName varchar(100)
);

-- 7) Brands
-- Defines brands for products.
create table Brand (
    Brand_id int primary key not null,
    BrandName varchar(100)
);

-- 8) Products
-- Contains product details, linked to categories and brands.
create table Product (
    Product_id int primary key not null,
    Product_name varchar(255),
    Category_id int,
    Brand_id int,
    Price float,
    Quantity int,
    Description varchar(255),
    Discount float,
    foreign key (Category_id) references Category(Category_id),
    foreign key (Brand_id) references Brand(Brand_id)
);

-- 9) Cart
-- Manages user shopping carts.
create table Cart (
    Cart_id int primary key,
    user_id int,
    Product_id int,
    Quantity int,
    foreign key (user_id) references User_Table(user_id),
    foreign key (Product_id) references Product(Product_id)
);

-- 10) Suppliers
-- Manages suppliers for products.
create table Suppliers (
    Supplier_id int primary key not null,
    Supplier_name varchar(255),
    Supplier_contact varchar(50)
);

-- 11) Stock
-- Keeps track of product stock managed by suppliers.
create table Stock (
    Stock_id int primary key,
    Product_id int,
    Supplier_id int,
    StockQuantity int,
    foreign key (Product_id) references Product(Product_id),
    foreign key (Supplier_id) references Suppliers(Supplier_id)
);

-- 12) Order Details
-- Contains details of products in each order.
create table Order_Details (
    Order_Details_id int primary key,
    Order_id int,
    Product_id int,
    Quantity int,
    Price float,
    foreign key (Order_id) references Order_Table(Order_id),
    foreign key (Product_id) references Product(Product_id)
);

-- 13) Reviews
-- Stores user reviews and ratings for products.
create table Reviews (
    Reviews_id int primary key,
    user_id int,
    Product_id int,
    Rating int,
    ReviewText varchar(255),
    foreign key (user_id) references User_Table(user_id),
    foreign key (Product_id) references Product(Product_id)
);

-- 14) Wishlists
-- Allows users to create wishlists of products.
create table Wishlist (
    Wishlist_id int primary key not null,
    user_id int,
    WishlistName varchar(100),
    foreign key (user_id) references User_Table(user_id)
);

-- 15) Wishlist Details
-- Stores products in wishlists.
create table Wishlist_Details (
    Wishlist_Details_id int primary key not null,
    Wishlist_id int,
    Product_id int,
    foreign key (Product_id) references Product(Product_id),
    foreign key (Wishlist_id) references Wishlist(Wishlist_id)
);

-- 16) Returns
-- Handles return requests for ordered products.
create table Returns (
    Return_id int primary key,
    Order_id int,
    ReturnReason varchar(255),
    RefundAmount float,
    RefundStatus varchar(50),
    foreign key (Order_id) references Order_Table(Order_id)
);

-- 17) Shipments
-- Stores shipping information for each order.
create table Shipments (
    Shipment_id int primary key,
    Order_id int,
    ShipmentDate varchar(255),
    ShipmentStatus varchar(50),
    foreign key (Order_id) references Order_Table(Order_id)
);
