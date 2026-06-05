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
    echo "Initialization complete."
}
secure_data() {
    TARGET_DIR="active_logs"
    chmod 700 "$TARGET_DIR"
    echo "Permissions set. Current permissions:"
    ls -ld "$TARGET_DIR"
}
initialize_system
secure_data
echo "System Environment Secured on $(date)"
