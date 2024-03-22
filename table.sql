CREATE TABLE cars (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(150) NOT NULL,
    "km" INTEGER NOT NULL,
    "price" INTEGER NOT NULL,
    "brandId" INTEGER,
    FOREIGN KEY ("brandId") REFERENCES brands("id") ON DELETE SET NULL,
    "userId" INTEGER NOT NULL,
    FOREIGN KEY ("userId") REFERENCES users("id") ON DELETE CASCADE
);

CREATE TABLE users (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(150) NOT NULL,
    "email" VARCHAR(150) NOT NULL
);

CREATE TABLE brands (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(150) NOT NULL
);

CREATE TABLE categories (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(150) NOT NULL
);

CREATE TABLE cars_categories (
    "id" SERIAL PRIMARY KEY,
    "carId" INTEGER NOT NULL,
    FOREIGN KEY ("carId") REFERENCES cars("id") ON DELETE CASCADE,
    "categoryId" INTEGER NOT NULL,
    FOREIGN KEY ("categoryId") REFERENCES categories("id") ON DELETE CASCADE
);