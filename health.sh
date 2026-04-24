bash
#!/bin/bash

display_usage() {

	echo "===== System Health Report ====="
	echo "date:$(date)"



	echo "===CPU Usage==="
	top -bn1|grep "Cpu(s)"|awk '{print "Cpu used:" 100 - $8"%"}'



	echo "===Memory usage==="
	free -h | awk '/^Mem/ {print "Total: "$2 "  Used: "$3 "  Free: "$4}'


	echo "---Disk Usage---"
	df -h / | awk 'NR==2 {print "Total: "$2 "  Used: "$3 "  Free: "$4 "  Use%: "$5}'

	echo "===== End of Report ====="


}

if [ $? -eq 0 ] ; then
	display_usage>health.log

fi
