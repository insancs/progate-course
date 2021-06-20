-- dapatkan id dan nama pengguna yang membeli "sandal"
SELECT users.id, users.name
FROM users
JOIN sales_records
ON users.id = sales_records.user_id
WHERE sales_records.item_id = (
  SELECT id
  FROM items
  WHERE name = "sandal")
GROUP BY users.id;