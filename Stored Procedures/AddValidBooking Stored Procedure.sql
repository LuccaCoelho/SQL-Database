CREATE DEFINER=`root`@`localhost` PROCEDURE `AddValidBooking`(IN BookingDate DATE, 
    IN TNumber INT,
    IN CustomerName VARCHAR(255))
BEGIN
DECLARE is_booked INT;

START TRANSACTION;

SELECT COUNT(*)
INTO is_booked
FROM Bookings
WHERE booking_date = booking_date AND table_number = table_number;

IF is_booked > 0 THEN
	ROLLBACK;
    SELECT CONCAT("Table ", Tnumber, " is already booked - booking cancelled")
    AS "Booking Status";

ELSE
	INSERT INTO Bookings (Date, TableNumber, FullName)
	VALUES (BookingDate, TNumber, CustomerName);
    COMMIT;
        SELECT 'Booking successful: Table has been booked.' AS booking_status;
END IF;
END