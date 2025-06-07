DELIMITER //

CREATE PROCEDURE AddValidBooking(
    IN booking_date DATE,
    IN booking_slot VARCHAR(20),
    IN table_no INT,
    IN customer_id INT,
    IN employee_id INT
)
BEGIN
    DECLARE booking_exists INT;

    START TRANSACTION;

    SELECT COUNT(*) INTO booking_exists
    FROM Bookings
    WHERE BookingDate = booking_date AND TableNo = table_no AND BookingSlot = booking_slot;

    IF booking_exists > 0 THEN
        ROLLBACK;
        SELECT 'Booking failed: Table is already booked at this slot on the given date.' AS Message;
    ELSE
        INSERT INTO Bookings (CustomerID, BookingDate, BookingSlot, TableNo, EmployeeID)
        VALUES (customer_id, booking_date, booking_slot, table_no, employee_id);
        COMMIT;
        SELECT 'Booking successful!' AS Message;
    END IF;
END //

DELIMITER ;
CALL AddValidBooking('2025-07-10', '14:00:00', 5, 2, 3);


