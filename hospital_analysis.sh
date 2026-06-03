#!/bin/bash
#  Member 5 : Clinical Analyst
process_vitals() {
	#Ensure reports directory exists
	[ ! -d reports ] && mkdir reports; > reports/critical_alerts.txt
        # Heart Rate critical alerts
        grep "CRITICAL" active_logs/heart_rate.log | awk '{print $1, $2, $3}' >> reports/critical_alerts.txt
	# Temperature critical alerts
	grep "CRITICAL" active_logs/temperature.log | awk '{print $1, $2, $3}' >> reports/critical_alerts.txt
	# get the CRITICAL alerts using grep
       	# extract the Timestamp, Device_ID, and Value using awk
}
#  Member 6 : Facility Auditor 
water_audit() {
    awk '/ICU_WATER_RESERVE/ { sum += $4; count++ }
         END {
             if (count > 0)
                 printf "Average ICU Water Usage: %.2f liters\n", sum/count;
             else
                 printf "No ICU water usage data found.\n"
         }' active_logs/water_usage.log
}

