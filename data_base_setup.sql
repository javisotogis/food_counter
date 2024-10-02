CREATE TABLE foods (
    id SERIAL PRIMARY KEY,
    food VARCHAR(50) NOT NULL,
    type VARCHAR(50) NOT NULL
);


create table exercise_records(
id SERIAL primary key,
excersise_type varchar (50),
time_min int);

alter table exercise_records add column date DATE;

select * from exercise_records;

INSERT INTO foods (food, type) VALUES
('Salmon', 'Proteins'),
('Chicken', 'Proteins'),
('Beef', 'Proteins'),
('Tuna', 'Proteins'),
('Eggs', 'Proteins'),
('Tofu', 'Proteins'),
('Lentils', 'Proteins'),
('Chickpeas', 'Proteins'),
('Beans', 'Proteins'),
('Quinoa', 'Proteins'),
('Almonds', 'Proteins'),
('Walnuts', 'Proteins'),
('Peas', 'Proteins'),
('Turkey', 'Proteins'),
('Yogurt', 'Dairy'),
('Milk', 'Dairy'),
('Cheese', 'Dairy'),
('Cottage cheese', 'Dairy'),
('Cream', 'Dairy'),
('Oats', 'Carbohydrates'),
('Whole grain bread', 'Carbohydrates'),
('Whole grain pasta', 'Carbohydrates'),
('Brown rice', 'Carbohydrates'),
('Potato', 'Carbohydrates'),
('Sweet potato', 'Carbohydrates'),
('Barley', 'Carbohydrates'),
('Corn', 'Carbohydrates'),
('Millet', 'Carbohydrates'),
('Wheat flour', 'Carbohydrates'),
('Corn tortilla', 'Carbohydrates'),
('Banana', 'Fruits'),
('Apple', 'Fruits'),
('Pear', 'Fruits'),
('Grapes', 'Fruits'),
('Orange', 'Fruits'),
('Strawberries', 'Fruits'),
('Kiwi', 'Fruits'),
('Mango', 'Fruits'),
('Pineapple', 'Fruits'),
('Watermelon', 'Fruits'),
('Melon', 'Fruits'),
('Avocado', 'Fruits'),
('Carrot', 'Vegetables'),
('Tomato', 'Vegetables'),
('Cucumber', 'Vegetables'),
('Zucchini', 'Vegetables'),
('Eggplant', 'Vegetables'),
('Lettuce', 'Vegetables'),
('Spinach', 'Vegetables'),
('Broccoli', 'Vegetables'),
('Cauliflower', 'Vegetables'),
('Bell pepper', 'Vegetables'),
('Garlic', 'Vegetables'),
('Onion', 'Vegetables'),
('Celery', 'Vegetables'),
('Mushrooms', 'Vegetables'),
('Asparagus', 'Vegetables'),
('Olive oil', 'Fats'),
('Butter', 'Fats'),
('Coconut oil', 'Fats'),
('Olives', 'Fats'),
('Sunflower seeds', 'Fats'),
('Chia seeds', 'Fats'),
('Flax seeds', 'Fats'),
('Cashews', 'Fats'),
('Pistachios', 'Fats'),
('Pumpkin seeds', 'Fats'),
('Avocado', 'Fats'),
('Peanuts', 'Fats'),
('Tahini', 'Fats'),
('Margarine', 'Fats');


INSERT INTO foods (food, type) VALUES
('Chicken ham', 'proteins');

CREATE TABLE days_of_week (
    id SERIAL PRIMARY KEY,
    day VARCHAR(10) NOT NULL
);

INSERT INTO days_of_week (day) VALUES
('Monday'),
('Tuesday'),
('Wednesday'),
('Thursday'),
('Friday'),
('Saturday'),
('Sunday');

CREATE TABLE weight (
    id SERIAL PRIMARY KEY,
    weight_kg DECIMAL(5, 2) NOT NULL,
    date DATE NOT NULL
);

CREATE TABLE records (
    id SERIAL PRIMARY KEY,
    food VARCHAR(50) NOT NULL,
    weight_grams DECIMAL(6, 2) NOT NULL,
    date DATE NOT NULL
);


CREATE TABLE drink_records (
    id SERIAL PRIMARY KEY,
    drink_type VARCHAR(50) NOT NULL,
    units DECIMAL(6, 2) NOT NULL,
    date DATE NOT NULL
);

CREATE TABLE extras (
    id SERIAL PRIMARY KEY,
    type VARCHAR(50) NOT NULL,
    kcal DECIMAL(6, 2) NOT NULL,
    date DATE NOT NULL
);


create table public.kcal_per_100g (
id SERIAL primary key,
foodID integer,
kcal_per_100g integer);

-- Creating the table
CREATE TABLE public.kcal_per_100g (
    id SERIAL PRIMARY KEY,
    foodID INTEGER,
    kcal_per_100g INTEGER
);

-- Inserting data into the table
INSERT INTO public.kcal_per_100g (foodID, kcal_per_100g)
VALUES
(1, 206),
(2, 165),
(3, 250),
(4, 132),
(5, 155),
(6, 76),
(7, 116),
(8, 164),
(9, 123),
(10, 120),
(11, 579),
(12, 654),
(13, 81),
(14, 189),
(15, 59),
(16, 42),
(17, 402),
(18, 98),
(19, 345),
(20, 389),
(21, 247),
(22, 357),
(23, 111),
(24, 77),
(25, 86),
(26, 354),
(27, 86),
(28, 378),
(29, 364),
(30, 218),
(31, 89),
(32, 52),
(33, 57),
(34, 69),
(35, 47),
(36, 32),
(37, 61),
(38, 60),
(39, 50),
(40, 30),
(41, 34),
(42, 160),
(43, 41),
(44, 18),
(45, 16),
(46, 17),
(47, 25),
(48, 15),
(49, 23),
(50, 55),
(51, 25),
(52, 31),
(53, 149),
(54, 40),
(55, 16),
(56, 22),
(57, 20),
(58, 884),
(59, 717),
(60, 892),
(61, 115),
(62, 584),
(63, 486),
(64, 534),
(65, 553),
(66, 562),
(67, 559),
(68, 160),
(69, 567),
(70, 595),
(71, 717),
(72, 265),
(73, 247),
(74, 265),
(75, 123);


create table max_units_per_day (
id SERIAL primary key,
type varchar(50),
max_unit int);

insert into max_units_per_day (type, max_unit)
VALUES
('Proteins', 6),
('Carbohydrates', 5),
('Fats', 6),
('Dairy', 3),
('Fruits', 3),
('Vegetables', 8);



create table drinks_records (
id SERIAL primary key,
drink_type varchar(50),
units int,
date DATE);


create table drinks (
id SERIAL primary key,
drink_type varchar (50) not NULL
);

alter table drinks add column kcal_per_drink int;

delete from drinks;
INSERT INTO drinks (drink_type) VALUES
('Tea'),
('Coffee'),
('Beer'),
('Coke'),
('Spirit');






INSERT INTO drinks (drink_type, kcal_per_drink) 
VALUES
('Tea', 5),            -- 2 kcal per 100ml -> 5 kcal per 250ml
('Coffee', 3),         -- 1 kcal per 100ml -> 3 kcal per 250ml
('Beer', 108),         -- 43 kcal per 100ml -> 108 kcal per 250ml
('Coke', 105),         -- 42 kcal per 100ml -> 105 kcal per 250ml
('Spirit', 625),       -- 250 kcal per 100ml -> 625 kcal per 250ml
('Wine', 213),         -- 85 kcal per 100ml -> 213 kcal per 250ml
('Water', 0),          -- 0 kcal per 100ml -> 0 kcal per 250ml
('Juice', 113),        -- 45 kcal per 100ml -> 113 kcal per 250ml
('Milkshake', 375),    -- 150 kcal per 100ml -> 375 kcal per 250ml
('Smoothie', 325),     -- 130 kcal per 100ml -> 325 kcal per 250ml
('Lemonade', 100),     -- 40 kcal per 100ml -> 100 kcal per 250ml
('Iced Tea', 75),      -- 30 kcal per 100ml -> 75 kcal per 250ml
('Hot Chocolate', 225),-- 90 kcal per 100ml -> 225 kcal per 250ml
('Soda', 98),          -- 39 kcal per 100ml -> 98 kcal per 250ml
('Energy Drink', 275), -- 110 kcal per 100ml -> 275 kcal per 250ml
('Whiskey', 625),      -- 250 kcal per 100ml -> 625 kcal per 250ml
('Rum', 575),          -- 230 kcal per 100ml -> 575 kcal per 250ml
('Gin', 650),          -- 260 kcal per 100ml -> 650 kcal per 250ml
('Vodka', 588),        -- 235 kcal per 100ml -> 588 kcal per 250ml
('Champagne', 225);    -- 90 kcal per 100ml -> 225 kcal per 250ml

-- Creating the exercise table
CREATE TABLE public.exercise (
    id SERIAL PRIMARY KEY,
    exercise_name VARCHAR(50),
    avg_kcal_burnt_30min INTEGER
);

-- Inserting data into the exercise table
INSERT INTO public.exercise (exercise_name, avg_kcal_burnt_30min) 
VALUES
('Walking', 150),
('Swimming', 250),
('Running (6 min per km)', 300),
('Running (5:30 min per km)', 330),
('Running (5 min per km)', 360),
('Running (4:30 min per km)', 400),
('HIIT', 400),
('Cycling (moderate pace)', 300),
('Jumping rope', 400),
('Yoga', 150),
('Pilates', 180),
('Strength training', 220),
('Rowing', 300),
('Hiking', 250),
('Dancing', 200),
('Boxing', 400),
('Tennis', 300),
('Basketball', 280),
('Elliptical trainer', 270),
('Stair climbing', 350);



----------------------------
----------------------------
alter table public.records add column meal_type varchar(50);
select * from public.records order by date, meal_type ;
select * from public.foods;
select * FROM public.drinks_records;
