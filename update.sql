UPDATE "cars"
SET("km", "price") = ROW(120000, 38000)
WHERE id = 1 RETURNING *;

UPDATE "cars"
SET("name") = ROW('Uno Way 2018')
WHERE id = 1 RETURNING *;