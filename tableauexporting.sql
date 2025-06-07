SELECT
    o.OrderID,
    o.OrderDate,
    o.Quantity,
    o.BillAmount,
    mi.Name AS ItemName,
    mi.Price,
    m.Cuisine,
    c.CustomerID,
    c.FirstName,
    c.LastName
FROM orders o
JOIN menuitems mi ON o.ItemID = mi.ItemID
JOIN menus m ON mi.ItemID = m.ItemID
JOIN bookings b ON o.BookingID = b.BookingID
JOIN customer c ON b.CustomerID = c.CustomerID;