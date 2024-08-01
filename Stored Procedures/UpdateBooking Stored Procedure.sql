CREATE PROCEDURE `UpdateBooking` (IN booking_id INT, IN booking_date DATE)
BEGIN
UPDATE bookings SET BookingDate = booking_date WHERE BookingID = booking_id; 
SELECT CONCAT("Booking", booking_id, "updated") AS "Confirmation";
END
