SELECT * FROM "cars";
SELECT * FROM "categories";

SELECT * FROM "categories" WHERE id = 2;

SELECT * FROM "cars" WHERE name LIKE '%Uno%';

SELECT * FROM "cars" WHERE name ILIKE '%UNO%';

SELECT * FROM "cars" JOIN "users" ON cars."userId" = users."id";

SELECT 
cars."id" AS "carId",
cars."name" AS "carName",
cars."km",
cars."price",
cars."brandId",
cars."userId",
users."name" AS "userName",
users."email" AS "userEmail" FROM "cars" JOIN "users"
ON cars."userId" = users."id";

SELECT 
cars."id" AS "carId",
cars."name" AS "carName",
cars."km",
cars."price",
cars."brandId",
brands."name" AS "brandName",
cars."userId",
users."name" AS "userName",
users."email" AS "userEmail" FROM "cars" 
JOIN "users" ON cars."userId" = users."id" 
JOIN "brands" ON cars."brandId" = brands."id";

SELECT * FROM "cars" 
JOIN "cars_categories" ON cars."id" = cars_categories."carId" 
WHERE "cars_categories"."categoryId" = 1;

