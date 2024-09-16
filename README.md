# Amazon E-commerce Database Schema

## Overview
This repository contains a comprehensive SQL database schema for an Amazon-like e-commerce platform. Developed as part of a database design assignment, this schema demonstrates relational database modeling for a complex online retail system.

## Features
The schema includes tables for:
- User management (Sign up, Login, User details)
- Product cataloging (Products, Categories, Brands)
- Order processing (Orders, Order details)
- Inventory management (Stock, Suppliers)
- Customer interactions (Reviews, Wishlists)
- Payment processing
- Shipping and Returns

## Structure
The main SQL file `Amazon.sql` contains the following tables:

1. Sign_up
2. Log_in
3. User_Table
4. Payments
5. Order_Table
6. Category
7. Brand
8. Product
9. Cart
10. Suppliers
11. Stock
12. Order_Details
13. Reviews
14. Wishlist
15. Wishlist_Details
16. Returns
17. Shipments

## Usage
To set up the database:

1. Ensure you have a MySQL server installed and running.
2. Open your MySQL client or command-line interface.
3. Run the following command to create the database:
   ```sql
   CREATE DATABASE Amazon;
   ```
4. Use the newly created database:
   ```sql
   USE Amazon;
   ```
5. Copy the contents of `Amazon.sql` and execute them in your MySQL environment.

## Entity Relationship Diagram
<img src="https://github.com/asifahamed11/amazon-ecommerce-db-schema/blob/main/amazon%20rdbms.jpg" alt="Home Screen Screenshot" title="Home Screen Screenshot" width="600" height="400"/>

## Contributing
This project was created as part of an educational assignment. However, suggestions and improvements are welcome. Please open an issue to discuss proposed changes.

## License
This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).

## Contact
[Asif Ahamed] - [asif223311112@outlook.com]

Project Link: [https://github.com/asifahamed11/amazon-ecommerce-db-schema.git]

## Acknowledgments
- [Course name - Database Management System]
