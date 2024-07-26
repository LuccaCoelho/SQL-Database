CREATE PROCEDURE `CheckBooking` (IN booking_date DATE, IN table_number INT)
BEGIN
DECLARE bookedTable INT DEFAULT 0;
 SELECT COUNT(bookedTable)
    INTO bookedTable
    FROM Bookings WHERE BookingDate = booking_date and TableNumber = table_number;
    IF bookedTable > 0 THEN
      SELECT CONCAT( "Table", table_number, "is already booked") AS "Booking status";
      ELSE 
      SELECT CONCAT( "Table", table_number, "is not booked") AS "Booking status";
    END IF;
END
