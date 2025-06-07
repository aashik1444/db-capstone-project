DELIMITER //

CREATE PROCEDURE CancelBooking (
    IN in_BookingID INT
)
BEGIN
    DELETE FROM bookings
    WHERE BookingID = in_BookingID;

    SELECT CONCAT('Booking ID ', in_BookingID, ' has been cancelled.') AS Message;
END //

DELIMITER ;
CALL CancelBooking(10);
