from pymongo import MongoClient
from tabulate import tabulate

# Connect to MongoDB using connection string
client = MongoClient("mongodb+srv://julio7528:7h1kBvvkVMikw4XB@cluster0.3btrggn.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0")
db = client['DEV']

# Query the collection
results = db.watering_log.find()

# Convert the results to a list of dictionaries
data = list(results)

# Extract the headers from the first document (assuming all documents have the same structure)
if data:
    headers = data[0].keys()
    rows = [list(doc.values()) for doc in data]
    table = tabulate(rows, headers=headers, tablefmt="pretty")
    print(table)
else:
    print("No data found")
