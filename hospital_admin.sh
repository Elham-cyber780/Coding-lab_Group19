#!/bin/bash

initialize_system() {
    if [ ! -d "active_logs" ]; then
        echo "Creating active_logs directory..."
        mkdir active_logs
    fi
    if [ ! -d "archived_logs" ]; then
        echo "Creating archived_logs directory..."
        mkdir archived_logs
    fi
    if [ ! -d "reports" ]; then
        echo "Creating reports directory..."
        mkdir reports
    fi
}

secure_data() {
    chmod 600 active_logs
    echo "Permissions set. Here are the current permissions:"
    ls -l | grep active_logs
}

initialize_system
secure_data
echo "System Environment Secured on $(date)"
# Author: Elham-cyber780
