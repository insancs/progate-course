-- dapatkan semua barang dengan total penjualan yang lebih besar dari "hoodie abu-abu"
SELECT sales_records.item_id, items.name, SUM(price) AS "total penjualan"
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
GROUP BY sales_records.item_id
HAVING SUM(price) > (
  SELECT SUM(price)
  FROM items
  JOIN sales_records
  ON sales_records.item_id = items.id
  WHERE items.name = "hoodie abu-abu"
  );