CREATE PROCEDURE `MakeBooking` (
IN booking_id INT, 
IN customer_id INT, 
IN table_no int, 
IN booking_date date)
BEGIN
INSERT INTO bookings (BookingID, BookingDate, TableNumber, CustomerID) VALUES 
(booking_id, booking_date, table_no, customer_id);

SELECT "New booking added" AS "Confirmation";

END
