#!/bin/bash

# Define the base directory
BASE_DIR="submission_reminder_app"

# Create the necessary directories
echo "Creating directories..."
mkdir -p $BASE_DIR/submissions
mkdir -p $BASE_DIR/images
mkdir -p $BASE_DIR/scripts

# Create and populate submissions.txt with 5 sample records
echo "Creating submissions.txt..."
cat > $BASE_DIR/submissions/submissions.txt <<EOL
# Sample submissions records
submission1, John Doe, 2024-11-01
submission2, Jane Smith, 2024-11-02
submission3, Alice Johnson, 2024-11-03
submission4, Bob Brown, 2024-11-04
submission5, Charlie White, 2024-11-05
EOL

# Create a dummy image (or use a placeholder image URL)
echo "Creating dummy image..."
curl -o $BASE_DIR/images/image.png https://via.placeholder.com/150

# Create the scripts directory files
echo "Creating script files..."

# Download or create reminder.sh (For now, we'll create a simple placeholder script)
cat > $BASE_DIR/scripts/reminder.sh <<EOL
#!/bin/bash
# This is the reminder script.
echo "Reminder: Please submit your assignments on time!"
EOL
chmod +x $BASE_DIR/scripts/reminder.sh

# Download or create functions.sh (For now, we'll create a placeholder functions file)
cat > $BASE_DIR/scripts/functions.sh <<EOL
#!/bin/bash
# This file contains utility functions for submission reminder app.

function send_reminder() {
    echo "Sending reminder to users..."
}

function log_activity() {
    echo "Logging activity..."
}
EOL
chmod +x $BASE_DIR/scripts/functions.sh

# Download or create config.env (For now, we'll create a simple placeholder config)
cat > $BASE_DIR/scripts/config.env <<EOL
# Configuration environment variables for submission reminder app.
DB_HOST=localhost
DB_USER=admin
DB_PASSWORD=secret
EOL

# Create the startup.sh script with startup logic
echo "Creating startup.sh..."
cat > $BASE_DIR/scripts/startup.sh <<EOL
#!/bin/bash

# Print a message indicating the start of the application
echo "Starting the Submission Reminder App..."

# Step 1: Source the environment configuration file
if [ -f "$PWD/scripts/config.env" ]; then
    echo "Sourcing config.env to load environment variables..."
    source "$PWD/scripts/config.env"
else
    echo "Error: config.env not found in $PWD/scripts. Exiting..."
    exit 1
fi

# Step 2: Run the reminder.sh script
if [ -f "$PWD/scripts/reminder.sh" ]; then
    echo "Running reminder script..."
    "$PWD/scripts/reminder.sh"
else
    echo "Error: reminder.sh not found in $PWD/scripts. Exiting..."
    exit 1
fi

# Continue with the rest of the script...

EOL
chmod +x $BASE_DIR/scripts/startup.sh

# Success message
echo "Environment setup complete! Directory structure and files created."
echo "You can now run the app with './scripts/startup.sh'."

