-- Populate Customers table
INSERT INTO `littlelemondb`.`Customers` (`CustomerID`, `FullName`, `ContactNumber`, `Email`) VALUES
(1, 'Alice Johnson', 1234567890, 'alice.johnson@example.com'),
(2, 'Bob Smith', 2345678901, 'bob.smith@example.com'),
(3, 'Charlie Brown', 3456789012, 'charlie.brown@example.com'),
(4, 'David Wilson', 4567890123, 'david.wilson@example.com'),
(5, 'Eva Adams', 5678901234, 'eva.adams@example.com'),
(6, 'Frank Miller', 6789012345, 'frank.miller@example.com'),
(7, 'Grace Lee', 7890123456, 'grace.lee@example.com'),
(8, 'Hannah Davis', 8901234567, 'hannah.davis@example.com'),
(9, 'Ivy White', 9012345678, 'ivy.white@example.com'),
(10, 'Jack Green', 1123456789, 'jack.green@example.com'),
(11, 'Kathy Moore', 2234567890, 'kathy.moore@example.com'),
(12, 'Liam Taylor', 3345678901, 'liam.taylor@example.com'),
(13, 'Mia Anderson', 4456789012, 'mia.anderson@example.com'),
(14, 'Nina Thomas', 5567890123, 'nina.thomas@example.com'),
(15, 'Oscar Jackson', 6678901234, 'oscar.jackson@example.com');

-- Populate MenuItems table
INSERT INTO `littlelemondb`.`MenuItems` (`MenuItemsID`, `CourseName`, `StarterName`, `DessertName`) VALUES
(1, 'Main Course 1', 'Starter 1', 'Dessert 1'),
(2, 'Main Course 2', 'Starter 2', 'Dessert 2'),
(3, 'Main Course 3', 'Starter 3', 'Dessert 3'),
(4, 'Main Course 4', 'Starter 4', 'Dessert 4'),
(5, 'Main Course 5', 'Starter 5', 'Dessert 5'),
(6, 'Main Course 6', 'Starter 6', 'Dessert 6'),
(7, 'Main Course 7', 'Starter 7', 'Dessert 7'),
(8, 'Main Course 8', 'Starter 8', 'Dessert 8'),
(9, 'Main Course 9', 'Starter 9', 'Dessert 9'),
(10, 'Main Course 10', 'Starter 10', 'Dessert 10'),
(11, 'Main Course 11', 'Starter 11', 'Dessert 11'),
(12, 'Main Course 12', 'Starter 12', 'Dessert 12'),
(13, 'Main Course 13', 'Starter 13', 'Dessert 13'),
(14, 'Main Course 14', 'Starter 14', 'Dessert 14'),
(15, 'Main Course 15', 'Starter 15', 'Dessert 15');

-- Populate Menus table
INSERT INTO `littlelemondb`.`Menus` (`MenuID`, `MenuName`, `Cuisine`, `MenuItemsID`) VALUES
(1, 'Menu 1', 'Italian', 1),
(2, 'Menu 2', 'French', 2),
(3, 'Menu 3', 'Chinese', 3),
(4, 'Menu 4', 'Indian', 4),
(5, 'Menu 5', 'Mexican', 5),
(6, 'Menu 6', 'Japanese', 6),
(7, 'Menu 7', 'Thai', 7),
(8, 'Menu 8', 'Spanish', 8),
(9, 'Menu 9', 'Greek', 9),
(10, 'Menu 10', 'Turkish', 10),
(11, 'Menu 11', 'American', 11),
(12, 'Menu 12', 'Vietnamese', 12),
(13, 'Menu 13', 'Brazilian', 13),
(14, 'Menu 14', 'Peruvian', 14),
(15, 'Menu 15', 'Korean', 15);

-- Populate Orders table
INSERT INTO `littlelemondb`.`Orders` (`OrderID`, `TotalCost`, `MenuID`, `CustomerID`) VALUES
(1, 75.00, 1, 1),
(2, 150.00, 2, 2),
(3, 200.00, 3, 3),
(4, 120.00, 4, 4),
(5, 90.00, 5, 5),
(6, 175.00, 6, 6),
(7, 220.00, 7, 7),
(8, 65.00, 8, 8),
(9, 240.00, 9, 9),
(10, 85.00, 10, 10),
(11, 130.00, 11, 11),
(12, 110.00, 12, 12),
(13, 145.00, 13, 13),
(14, 195.00, 14, 14),
(15, 180.00, 15, 15);

-- Populate Delivery table
INSERT INTO `littlelemondb`.`Delivery` (`DeliveryID`, `DeliveryStatus`, `OrderID`) VALUES
(1, 'Pending', 1),
(2, 'Delivered', 2),
(3, 'In Progress', 3),
(4, 'Cancelled', 4),
(5, 'Pending', 5),
(6, 'Delivered', 6),
(7, 'In Progress', 7),
(8, 'Cancelled', 8),
(9, 'Pending', 9),
(10, 'Delivered', 10),
(11, 'In Progress', 11),
(12, 'Cancelled', 12),
(13, 'Pending', 13),
(14, 'Delivered', 14),
(15, 'In Progress', 15);

-- Populate Bookings table
INSERT INTO `littlelemondb`.`Bookings` (`BookingID`, `TableNumber`, `BookingDate`, `CustomerID`) VALUES
(1, 1, '2024-07-01', 1),
(2, 2, '2024-07-02', 2),
(3, 3, '2024-07-03', 3),
(4, 4, '2024-07-04', 4),
(5, 5, '2024-07-05', 5),
(6, 6, '2024-07-06', 6),
(7, 7, '2024-07-07', 7),
(8, 8, '2024-07-08', 8),
(9, 9, '2024-07-09', 9),
(10, 10, '2024-07-10', 10),
(11, 11, '2024-07-11', 11),
(12, 12, '2024-07-12', 12),
(13, 13, '2024-07-13', 13),
(14, 14, '2024-07-14', 14),
(15, 15, '2024-07-15', 15);
