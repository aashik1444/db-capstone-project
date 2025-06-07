SELECT DISTINCT
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS FullName,
    o.OrderID,
    o.BillAmount AS Cost,
    m.Cuisine,
    mi.Name,
    mi.Type
FROM customer c
JOIN bookings b ON c.CustomerID = b.CustomerID
JOIN orders o ON b.BookingID = o.BookingID
JOIN menus m ON o.MenuID = m.MenuID
JOIN menuitems mi ON o.ItemID = mi.ItemID
WHERE o.BillAmount > 150
ORDER BY o.BillAmount ASC;
