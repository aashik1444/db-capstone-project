DELIMITER //

CREATE PROCEDURE CheckBooking(
    IN booking_date DATE,
    IN table_no INT
)
BEGIN
    DECLARE booking_status INT;

    SELECT COUNT(*) INTO booking_status
    FROM bookings
    WHERE BookingDate = booking_date AND TableNo = table_no;

    IF booking_status > 0 THEN
        SELECT CONCAT('Table ', table_no, ' is already booked on ', booking_date) AS Status;
    ELSE
        SELECT CONCAT('Table ', table_no, ' is available on ', booking_date) AS Status;
    END IF;
END //

DELIMITER ;

CALL CheckBooking('2025-06-01', 12);

SELECT * FROM bookings;

