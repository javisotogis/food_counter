import tkinter as tk
from tkinter import messagebox
from tkinter import ttk
from tkcalendar import Calendar
import psycopg2
from psycopg2 import sql


# variables
grams = None
meal_category = None
food_type = None
date = None


# Function to connect to PostgreSQL and retrieve data
def connect_to_db(column_name, table_name):
    try:
        # Connect to your PostgreSQL database
        conn = psycopg2.connect(
            dbname="dieta",
            user="postgres",
            password="postgres",
            host="localhost",
            port="5432"
        )
        cursor = conn.cursor()
        
        # Define the SQL query to select data
        query = sql.SQL(f"SELECT {column_name} FROM public.{table_name} order by {column_name}")
        
        # Execute the query
        cursor.execute(query)
        
        # Fetch all rows from the result
        result = cursor.fetchall()
        
        # Close the connection and cursor
        cursor.close()
        conn.close()
        
        # Return the result
        return result
    
    except Exception as e:
        # Display error message if something goes wrong
        messagebox.showerror("Database Error", f"An error occurred while selecting data: {e}")
        return None

# Function to submit data to PostgreSQL
def submit_to_db(food_type, grams, date, meal_type):
    try:
        # Connect to your PostgreSQL database
        conn = psycopg2.connect(
            dbname="dieta",
            user="postgres",
            password="postgres",
            host="localhost",
            port="5432"
        )
        cursor = conn.cursor()
        
        # Define the SQL query to insert data
        insert_query = sql.SQL(
            "INSERT INTO public.records (food, weight_grams, date, meal_type) "
            "VALUES (%s, %s, %s, %s)"
        )
        print("here: ", meal_type)
        data_to_insert = (food_type, grams, date, meal_type)
        
        # Execute the query and commit the transaction
        cursor.execute(insert_query, data_to_insert)
        conn.commit()
        
        # Close the connection
        cursor.close()
        conn.close()
        
        messagebox.showinfo("Database Update", "Food entry successfully inserted into the database.")
    except Exception as e:
        messagebox.showerror("Database Error", f"An error occurred while inserting data: {e}")


# Function to submit data to PostgreSQL
def submit_excersise_to_db(drink_type, units, date):
    try:
        # Connect to your PostgreSQL database
        conn = psycopg2.connect(
            dbname="dieta",
            user="postgres",
            password="postgres",
            host="localhost",
            port="5432"
        )
        cursor = conn.cursor()
        
        # Define the SQL query to insert data
        insert_query = sql.SQL(
            "INSERT INTO public.exercise_records (excersise_type, time_min, date) "
            "VALUES (%s, %s, %s)"
        )
        data_to_insert = (drink_type, units, date)
        
        # Execute the query and commit the transaction
        cursor.execute(insert_query, data_to_insert)
        conn.commit()
        
        # Close the connection
        cursor.close()
        conn.close()
        
        messagebox.showinfo("Database Update", "Excercise entry successfully inserted into the database.")
    except Exception as e:
        messagebox.showerror("Database Error", f"An error occurred while inserting data: {e}")




# Function to submit data to PostgreSQL
def submit_drink_to_db(drink_type, units, date):
    try:
        # Connect to your PostgreSQL database
        conn = psycopg2.connect(
            dbname="dieta",
            user="postgres",
            password="postgres",
            host="localhost",
            port="5432"
        )
        cursor = conn.cursor()
        
        # Define the SQL query to insert data
        insert_query = sql.SQL(
            "INSERT INTO public.drinks_records (drink_type, units, date) "
            "VALUES (%s, %s, %s)"
        )
        data_to_insert = (drink_type, units, date)
        
        # Execute the query and commit the transaction
        cursor.execute(insert_query, data_to_insert)
        conn.commit()
        
        # Close the connection
        cursor.close()
        conn.close()
        
        messagebox.showinfo("Database Update", "Food entry successfully inserted into the database.")
    except Exception as e:
        messagebox.showerror("Database Error", f"An error occurred while inserting data: {e}")

# Function to process food input
def submit_food():
    global grams, meal_type, food_type, date
    
    try:
        grams = int(grams_entry.get())
        
        meal_type = meal_category_var.get()
        food_type = food_type_combobox.get()
        date = calendar.get_date()
        
        if meal_type and food_type:
            message = (f"{date}: You have entered {grams} grams of {food_type}"
                       f"for {meal_type}.")
            messagebox.showinfo("Food Input Received", message)
            
            # Call function to submit data to the PostgreSQL database
            submit_to_db(food_type, grams, date, meal_type)
        else:
            messagebox.showwarning("Input Error", "Please select a food category, meal category, and food type.")
    
    except ValueError:
        messagebox.showerror("Input Error", "Please enter a valid number for grams.")


# Function to process drinks input
def submit_drink():
    global drink_type, units, date
    
    try:
        units = int(drink_units_entry.get())  
        drink_type = drink_type_combobox.get()
        date = calendar.get_date()

        
        if drink_type and units:
            message = (f"{date}: You have entered {units} units of {drink_type}"
                       f"for {drink_type}.")
            messagebox.showinfo("Food Input Received", message)
            
            # Call function to submit data to the PostgreSQL database
            submit_drink_to_db(drink_type, units, date)
        else:
            messagebox.showwarning("Input Error", "Please select a food category, meal category, and food type.")
    
    except ValueError:
        messagebox.showerror("Input Error", "Please enter a valid number for drink units.")

# Function to process drinks input
def submit_excersise():
    global excersise_type, time_min, date
    
    try:
        time_min = int(time_units_entry.get())  
        excersise_type =  excersise_type_combobox.get()
        date = calendar.get_date()

        
        if time_min and excersise_type:
            message = (f"{date}: You have entered {time_min} minutes of {excersise_type}"
                       f"for {excersise_type}.")
            messagebox.showinfo("Food Input Received", message)
            
            # Call function to submit data to the PostgreSQL database
            submit_excersise_to_db(excersise_type, time_min, date)
        else:
            messagebox.showwarning("Input Error", "Please select a food category, meal category, and food type.")
    
    except ValueError:
        messagebox.showerror("Input Error", "Please enter a valid number for drink units.")



# Create the main window
root = tk.Tk()
root.title("Food and Drink Input Tool")

# Calendar widget
calendar_label = tk.Label(root, text="Select Date:")
calendar_label.pack()

calendar = Calendar(root)
calendar.pack()

#### Food input section
grams_label = tk.Label(root, text="Enter grams of food:")
grams_label.pack()

grams_entry = tk.Entry(root)
grams_entry.pack()

meal_category_var = tk.StringVar()
meal_categories = ["Breakfast", "Snack", "Lunch", "Dinner"]

meal_label = tk.Label(root, text="Select meal category:")
meal_label.pack()

for meal in meal_categories:
    radio_button = tk.Radiobutton(root, text=meal, variable=meal_category_var, value=meal)
    radio_button.pack()

# Dropdown menu for food type
food_type_label = tk.Label(root, text="Select type of food:")
food_type_label.pack()

food_types = connect_to_db("food","foods")

food_type_combobox = ttk.Combobox(root, values=food_types)
food_type_combobox.set("")  # Ensure no selection at startup
food_type_combobox.pack()

# Submit button for food
submit_food_button = tk.Button(root, text="Submit Food", command=submit_food)
submit_food_button.pack()


#########DRINKS

#### drink input section
drink_units_label = tk.Label(root, text="Enter units of drink:")
drink_units_label.pack()

drink_units_entry = tk.Entry(root)
drink_units_entry.pack()


# Dropdown menu for drink type
drink_type_label = tk.Label(root, text="Select type of drink:")
drink_type_label.pack()

drink_types = connect_to_db("drink_type","drinks")

drink_type_combobox = ttk.Combobox(root, values=drink_types)
drink_type_combobox.set("")  # Ensure no selection at startup
drink_type_combobox.pack()

# Submit button for drink
submit_drink_button = tk.Button(root, text="Submit drink", command=submit_drink)
submit_drink_button.pack()

#########excersiseS

#### excersise input section
excersise_units_label = tk.Label(root, text="Enter min of excersise:")
excersise_units_label.pack()

time_units_entry = tk.Entry(root)
time_units_entry.pack()


# Dropdown menu for excersise type
excersise_type_label = tk.Label(root, text="Select type of excersise:")
excersise_type_label.pack()

excersise_types = connect_to_db("exercise_name","exercise")

excersise_type_combobox = ttk.Combobox(root, values=excersise_types)
excersise_type_combobox.set("")  # Ensure no selection at startup
excersise_type_combobox.pack()

# Submit button for excersise
submit_excersise_button = tk.Button(root, text="Submit excersise", command=submit_excersise)
submit_excersise_button.pack()

# Run the application
root.mainloop()
