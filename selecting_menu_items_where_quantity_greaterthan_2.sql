SELECT mi.Name
FROM menuitems mi
WHERE mi.ItemID = ANY (
    SELECT o.ItemID
    FROM orders o
    WHERE o.Quantity > 2
);
