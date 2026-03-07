import pandas as pd

# Function definitions
def get_table(table_str, engine):
	return pd.read_sql(f"SELECT * FROM {table_str}", con=engine)