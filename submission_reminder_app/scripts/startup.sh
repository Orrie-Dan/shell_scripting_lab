#!/bin/bash
# Startup logic for submission reminder app

echo "Starting the Submission Reminder App..."
source $PWD/scripts/config.env

# Example: Run the reminder script as part of the startup
$PWD/scripts/reminder.sh

# Additional startup tasks can go here...
