#!/bin/bash
function DO(){
	delay=10s
	echo Starting spy with delay $delay > report_spy.txt
	while pgrep 'mem.bash' > /dev/null; 
	do
		top -b -n 1 | head -n 12 | tail -n 9 >> report_spy.txt
		echo @&@&@&@&@&@&@&@&@&@&@&@&&@&@&@&@&@&@&@&@&@&@&@&@& >> report_spy.txt
		sleep $delay
	done
	echo "Completed, report:" >> report_spy.txt
	dmesg | grep mem.bash | tail -n 2 >> report_spy.txt
}

DO