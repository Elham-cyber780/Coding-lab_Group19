#!/bin/bash

rotate_logs() { 
#grab the current date and time so we can label the archived files 	
timestamp=$(date + "%Y%m%d_%H%M")
 
#move the heart rate log out of archive_logs and into archived_logs with the timestamp in the name
mv active_logs/heart_rate.log archived_logs/heart_rate_${timestamp}.log
#We do the same for temparature log
mv active_logs/temperature.log archived_logs/temperature_${timestamp}.log
#and the water usage log as well
mv active_logs/water_usage.log archived_logs/water_usage_${timestamp}.log
 
#now recreate empty log files so the Python engine doesn't lose its place
touch active_logs/heart_rate.log
touch active_logs/temperature.log
touch active_logs/water_usage.log

#let the user know evrything went through fine
echo "Logs archived successflly on $(date)"
  }

#run the function
rotate_logs
