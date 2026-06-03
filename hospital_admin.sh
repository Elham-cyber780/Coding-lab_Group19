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
	echo "============================================"
	echo "  KNH Hospital  Securing Data Directories"
	 echo "============================================"

	 TARGET_DIR="active_logs"
	  if [ ! -d "$TARGET_DIR" ]; then
		   echo "  [ERROR]  '$TARGET_DIR' folder not found."
		   echo "           Please run initialize_system() first."
		   exit 1
	  fi

	  echo "  [LOCK]   Locking '$TARGET_DIR'..."
	   chmod 600 "$TARGET_DIR"
	   echo "  [DONE]   Folder locked successfully."

	   echo "  [VERIFY] Current permissions:"
	   ls -ld "$TARGET_DIR"

	   echo "  [LOCK]   Locking log files inside '$TARGET_DIR'..."
	   chmod 600 "$TARGET_DIR"/*.log 2>/dev/null
	   echo "  [DONE]   All log files locked."

	   echo ""
	    echo "  [STATUS] active_logs is now secure. Only owner can access it."
	     echo "============================================"
     }
















										    






initialize_system
secure_data
echo "System Environment Secured on $(date)"
# Author: Elham-cyber780
echo 'hospital_admin.sh execution complete'

