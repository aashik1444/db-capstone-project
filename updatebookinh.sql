DELIMITER //

CREATE PROCEDURE UpdateBooking (
    IN in_BookingID INT,
    IN in_NewBookingDate DATE
)
BEGIN
    UPDATE bookings
    SET BookingDate = in_NewBookingDate
    WHERE BookingID = in_BookingID;

    SELECT CONCAT('Booking ID ', in_BookingID, ' has been updated to ', in_NewBookingDate) AS Message;
END //

DELIMITER ;
CALL UpdateBooking(10, '2025-08-15');
