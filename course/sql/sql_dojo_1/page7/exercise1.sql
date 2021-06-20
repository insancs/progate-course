-- dapatkan nama dan jumlah penjualan unit untuk 5 barang dengan penjualan tertinggi
SELECT item_id, items.name, COUNT(*)
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
GROUP BY item_id
ORDER BY COUNT(*) DESC
LIMIT 5;