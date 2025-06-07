DELIMITER //

CREATE PROCEDURE AddBooking (
    IN in_BookingID INT,
    IN in_CustomerID INT,
    IN in_BookingDate DATE,
    IN in_BookingSlot TIME,
    IN in_TableNo INT,
    IN in_EmployeeID INT
)
BEGIN
    INSERT INTO bookings (
        BookingID, CustomerID, BookingDate, BookingSlot, TableNo, EmployeeID
    )
    VALUES (
        in_BookingID, in_CustomerID, in_BookingDate, in_BookingSlot, in_TableNo, in_EmployeeID
    );

    SELECT CONCAT('Booking with ID ', in_BookingID, ' added successfully.') AS Message;
END //

DELIMITER ;


CALL AddBooking(11, 2, '2025-07-20', '14:00:00', 4, 3);

