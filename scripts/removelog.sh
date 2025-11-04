#!/bin/bash
#
#Variable for reating the remvoe log

LOG_FILE="/home/pi/Desktop/remove.log"

if [ $# -eq 0 ]; then
	echo "Please enter a list of files or directories to delete" >&2
	exit 1
fi

if [ "$1" == "-s" ]; then
	SILENT=1
	shift
else
	SILENT=0
fi

if [ ! -f "LOG_FILE" ]; then
	touch "/home/pi/Desktop/remove.log"
fi

for FILE in "$@"; do
	if [ -e "$FILE" ]; then
		rm -rf "$FILE"
		echo "File ($FILE) was delted by $USER"
		if [ $SILENT -eq 0 ]; then
			echo "$(date) - $USER deleted $FILE" >> "$LOG_FILE"
		fi
	else
		echo "File or directory '$FILE' not found" >&2
	fi
done

