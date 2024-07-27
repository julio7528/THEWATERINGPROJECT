// Command to use Database DEV
use('DEV');
// Command InsertOne (unique insert)
db.watering_log.insertOne({
    project: "Watering System",
    task: "Watering front garden",
    type: "Maintenance",
    status: "Completed",
    description: "Watered the plants in the front garden. Ensured even distribution of water.",
    ram_usage: "500MB",
    processing_usage: "30%"
});
// Select all documents from the collection
db.watering_log.find();