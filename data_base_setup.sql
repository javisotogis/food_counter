CREATE TABLE foods (
    id SERIAL PRIMARY KEY,
    food VARCHAR(50) NOT NULL,
    type VARCHAR(50) NOT NULL
);

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

CREATE TABLE extras (
    id SERIAL PRIMARY KEY,
    type VARCHAR(50) NOT NULL,
    kcal DECIMAL(6, 2) NOT NULL,
    date DATE NOT NULL
);


create table drinks (
id SERIAL primary key,
drink_type varchar (50) not NULL
);

INSERT INTO drinks (drink_type) VALUES
('Tea'),
('Coffee'),
('Beer'),
('Coke'),
('Spirit');


----------------------------
----------------------------
alter table public.records add column meal_type varchar(50);
select * from public.records;
SELECT * FROM public.foods;
