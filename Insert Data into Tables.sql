USE `littlelemondb`;

-- Populating bookings table
INSERT INTO `bookings` (`Date`, `TableNumber`) VALUES
('2024-07-01', 1),
('2024-07-02', 2),
('2024-07-03', 3),
('2024-07-04', 4),
('2024-07-05', 5),
('2024-07-06', 6),
('2024-07-07', 7),
('2024-07-08', 8),
('2024-07-09', 9),
('2024-07-10', 10),
('2024-07-11', 11),
('2024-07-12', 12),
('2024-07-13', 13),
('2024-07-14', 14),
('2024-07-15', 15);

-- Populating customers table
INSERT INTO `customers` (`FullName`, `PhoneNumber`, `Email`, `bookings_BookingID`) VALUES
('John Doe', '1234567890', 'john@example.com', 1),
('Jane Smith', '1234567891', 'jane@example.com', 2),
('Alice Johnson', '1234567892', 'alice@example.com', 3),
('Bob Brown', '1234567893', 'bob@example.com', 4),
('Charlie Davis', '1234567894', 'charlie@example.com', 5),
('David Evans', '1234567895', 'david@example.com', 6),
('Eva Green', '1234567896', 'eva@example.com', 7),
('Frank Harris', '1234567897', 'frank@example.com', 8),
('Grace Hill', '1234567898', 'grace@example.com', 9),
('Hannah King', '1234567899', 'hannah@example.com', 10),
('Ian Lewis', '1234567800', 'ian@example.com', 11),
('Jack Martin', '1234567801', 'jack@example.com', 12),
('Karen Nelson', '1234567802', 'karen@example.com', 13),
('Larry Peterson', '1234567803', 'larry@example.com', 14),
('Mia Scott', '1234567804', 'mia@example.com', 15);

-- Populating order_delivery_status table
INSERT INTO `order_delivery_status` (`DeliveryDate`, `DeliveryStatus`) VALUES
('2024-07-01', 'Delivered'),
('2024-07-02', 'Pending'),
('2024-07-03', 'In Progress'),
('2024-07-04', 'Delivered'),
('2024-07-05', 'Pending'),
('2024-07-06', 'In Progress'),
('2024-07-07', 'Delivered'),
('2024-07-08', 'Pending'),
('2024-07-09', 'In Progress'),
('2024-07-10', 'Delivered'),
('2024-07-11', 'Pending'),
('2024-07-12', 'In Progress'),
('2024-07-13', 'Delivered'),
('2024-07-14', 'Pending'),
('2024-07-15', 'In Progress');

-- Populating staff_info table
INSERT INTO `staff_info` (`Role`, `Salary`) VALUES
('Manager', 60000),
('Chef', 50000),
('Waiter', 30000),
('Cleaner', 25000),
('Host', 28000),
('Sous Chef', 45000),
('Bartender', 35000),
('Dishwasher', 20000),
('Cashier', 32000),
('Security', 27000),
('Assistant Chef', 40000),
('Receptionist', 30000),
('Waitress', 30000),
('Line Cook', 35000),
('Busboy', 22000);

-- Populating orders table
INSERT INTO `orders` (`OrderDate`, `Quantity`, `TotalCost`, `customers_CustomerID`, `order_delivery_status_DeliveryID`, `staff_info_StaffID`) VALUES
('2024-07-01', 2, 40, 1, 1, 1),
('2024-07-02', 3, 60, 2, 2, 2),
('2024-07-03', 1, 20, 3, 3, 3),
('2024-07-04', 4, 80, 4, 4, 4),
('2024-07-05', 2, 40, 5, 5, 5),
('2024-07-06', 5, 100, 6, 6, 6),
('2024-07-07', 2, 40, 7, 7, 7),
('2024-07-08', 3, 60, 8, 8, 8),
('2024-07-09', 4, 80, 9, 9, 9),
('2024-07-10', 1, 20, 10, 10, 10),
('2024-07-11', 2, 40, 11, 11, 11),
('2024-07-12', 5, 100, 12, 12, 12),
('2024-07-13', 3, 60, 13, 13, 13),
('2024-07-14', 2, 40, 14, 14, 14),
('2024-07-15', 4, 80, 15, 15, 15);

-- Populating menu table
INSERT INTO `menu` (`MenuID`, `Cuisine`, `Starter`, `Courses`, `Drinks`, `orders_OrderID`, `orders_customers_CustomerID`) VALUES
(1, 'Italian', 'Bruschetta', 'Pasta', 'Wine', 1, 1),
(2, 'French', 'Escargot', 'Coq au Vin', 'Champagne', 2, 2),
(3, 'Mexican', 'Nachos', 'Tacos', 'Tequila', 3, 3),
(4, 'Japanese', 'Sushi', 'Ramen', 'Sake', 4, 4),
(5, 'Indian', 'Samosa', 'Curry', 'Lassi', 5, 5),
(6, 'Chinese', 'Spring Rolls', 'Kung Pao Chicken', 'Tea', 6, 6),
(7, 'American', 'Wings', 'Burger', 'Soda', 7, 7),
(8, 'Greek', 'Tzatziki', 'Moussaka', 'Ouzo', 8, 8),
(9, 'Spanish', 'Gazpacho', 'Paella', 'Sangria', 9, 9),
(10, 'Thai', 'Satay', 'Pad Thai', 'Beer', 10, 10),
(11, 'Vietnamese', 'Spring Rolls', 'Pho', 'Iced Coffee', 11, 11),
(12, 'Korean', 'Kimchi', 'BBQ', 'Soju', 12, 12),
(13, 'Mediterranean', 'Hummus', 'Kebab', 'Wine', 13, 13),
(14, 'German', 'Pretzel', 'Sausage', 'Beer', 14, 14),
(15, 'Brazilian', 'Pão de Queijo', 'Feijoada', 'Caipirinha', 15, 15);

-- Populating menuitems table
INSERT INTO `menuitems` (`CourseName`, `StarterName`, `DessertName`, `menu_MenuID`, `menu_orders_OrderID`, `menu_orders_customers_CustomerID`) VALUES
('Pasta', 'Bruschetta', 'Tiramisu', 1, 1, 1),
('Coq au Vin', 'Escargot', 'Creme Brulee', 2, 2, 2),
('Tacos', 'Nachos', 'Churros', 3, 3, 3),
('Ramen', 'Sushi', 'Mochi', 4, 4, 4),
('Curry', 'Samosa', 'Gulab Jamun', 5, 5, 5),
('Kung Pao Chicken', 'Spring Rolls', 'Fortune Cookie', 6, 6, 6),
('Burger', 'Wings', 'Apple Pie', 7, 7, 7),
('Moussaka', 'Tzatziki', 'Baklava', 8, 8, 8),
('Paella', 'Gazpacho', 'Flan', 9, 9, 9),
('Pad Thai', 'Satay', 'Mango Sticky Rice', 10, 10, 10),
('Pho', 'Spring Rolls', 'Che', 11, 11, 11),
('BBQ', 'Kimchi', 'Bingsu', 12, 12, 12),
('Kebab', 'Hummus', 'Baklava', 13, 13, 13),
('Sausage', 'Pretzel', 'Baklava', 14, 14, 14),
('Burger', 'Wings', 'Apple Pie', 15, 15, 15)
