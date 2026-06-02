#!/bin/bash

# Member 1 - The Architect
# Function: initialize_system()
# Purpose: Check if required directories exist. Create them if they don't.

initialize_system() {
    echo "Starting system initialization..."

    # Check and create active_logs
    if [ ! -d "active_logs" ]; then
        echo "Creating active_logs directory..."
        mkdir active_logs
    else
        echo "active_logs already exists. Skipping."
    fi

    # Check and create archived_logs
    if [ ! -d "archived_logs" ]; then
        echo "Creating archived_logs directory..."
        mkdir archived_logs
    else
        echo "archived_logs already exists. Skipping."
    fi

    # Check and create reports
    if [ ! -d "reports" ]; then
        echo "Creating reports directory..."
        mkdir reports
    else
        echo "reports already exists. Skipping."
    fi

    echo "Initialization complete."
}

# Tested: Script successfully creates all 3 required directories
