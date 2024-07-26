CREATE DEFINER=`root`@`localhost` PROCEDURE `AddBooking`(IN booking_id INT, IN customer_id INT, IN booking_date DATE, IN TNumber INT)
BEGIN
INSERT INTO customers (CustomerID)
VALUES (customer_id);

INSERT INTO bookings (BookingID, Date, TableNumber, CustomerID)
VALUES (booking_id, booking_date, TNumber, customer_id);

SELECT "New Booking added" as "Confirmation";

END