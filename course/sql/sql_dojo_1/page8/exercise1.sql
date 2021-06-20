-- dapatkan berapa kali penjualan terjadi untuk setiap harinya
SELECT purchased_at, COUNT(item_id) AS "penjualan"
FROM sales_records
GROUP BY purchased_at;