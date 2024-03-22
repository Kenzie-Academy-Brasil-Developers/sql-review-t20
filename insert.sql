INSERT INTO users ("name", "email") 
VALUES ('Alex', 'alex@email.com') RETURNING *;

INSERT INTO brands ("name")
VALUES ('Audi'), ('Fiat'), ('Ford'), ('Chevrolet'), ('Volkswagen') RETURNING *;

INSERT INTO categories ("name")
VALUES ('Ratch'), ('Sedan'), ('Caminhonete'), ('Esportivo'), ('Luxo'), ('Com escada em cima') RETURNING *;

INSERT INTO cars ("name", "km", "price", "brandId", "userId")
VALUES ('Uno Way', 80000, 40000, 2, 1);

INSERT INTO cars_categories ("carId", "categoryId")
VALUES (1, 1), (1, 6);
