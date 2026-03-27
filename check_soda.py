# General imports
import os
from dotenv import load_dotenv
import datetime

# Data imports
from sqlalchemy import create_engine
import psycopg2 
import pandas as pd


###############################################################################
# Setup
###############################################################################
load_dotenv()

# Pull all sensitive info from the local .env file within this repo
POSTGRES_USER = os.getenv("POSTGRES_USER")
POSTGRES_PW = os.getenv("POSTGRES_PW")

# Connect to the database
engine = create_engine(f'postgresql+psycopg2://{POSTGRES_USER}:{POSTGRES_PW}@localhost:5432/coke')


###############################################################################
# Definitions
###############################################################################
def get_last_date():
	"""
	This function gets the latest info from the database table

	Args:
		None
	Returns:
		latest_date_value (int): the latest date currently recorded in database
		highest_id (int): the highest id currently recorded in database
	"""
	
	# The raw query to find the latest info we are after
	sql_query = f"""
		SELECT
			MAX("date") AS latest_date,
			MAX("id") AS highest_id
		FROM
			consumption;
	"""

	# pandas.read_sql_query handles the execution and fetching of the result
	latest_date_df = pd.read_sql_query(sql_query, engine)
	
	# Convert the result to a single scalar value if needed
	latest_date_value = latest_date_df['latest_date'].iloc[0]
	highest_id = latest_date_df['highest_id'].iloc[0]

	return latest_date_value, highest_id

def record_to_db(dt, val, idx):
	"""
	This function takes the provided data and appends it to the existing data
	in the database table.

	Args:
		dt (datetime.date): The day after the latest recorded date in database
		val (float): The number of ounces of soda drank on the given day
		idx (int): Incremental integer that acts as the table's primary key
	Returns:
		None (but does potentially make changes to the database table)
	"""

	# Convert inputs into dataframe with singular row
	df = pd.DataFrame({
		"date": [dt],
		"ounces": [val],
		"id": [idx]
	})

	# Append the singular row to the end of the table
	df.to_sql(
        name='consumption',   # Table name
        con=engine,           # Connection engine
        if_exists='append',   # Append to existing table
        index=False           # Do not write DataFrame index as a column
    )

    # Let the user know the data was recorded successfully
	print(f"Recorded {val} ounces on {dt} to database with index {idx}")


###############################################################################
# Main Script
###############################################################################
# Get the latest database info
latest_date, highest_id = get_last_date()

# Loop through days starting with the day after the latest database date...
start_date = latest_date + datetime.timedelta(days=1)
# ...through yesterday (today shouldn't be included as the value could change)
end_date = datetime.datetime.today().date()

# Get the number of completed days since latest database entry
delta = (end_date - start_date).days   # returns timedelta

# If there are missing days, loop through them and have the user manually
# record intake for each day
if delta > 0:
	for i in range(delta):
		while True:
			# Get user input
			day = start_date + datetime.timedelta(days=i)
			amt = input(f"How many ounces of soda did you drink on {day}: ")

			# Validate input and record to database if valid
			try:
				assert float(amt) >= 0
				record_to_db(day, amt, highest_id + 1 + i)
				break

			# If invalid, re-prompt user
			except Exception as e:
				print(e)
				print("Invalid value, amount must be a non-negative float")

# If there are no missing days, let the user know
else:
	print(f"Database is up-to-date through {latest_date}")