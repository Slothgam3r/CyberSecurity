#!/bin/bash
#
space=$(df -h | awk '{print $5}')
used=$(df -h / | grep / | awk '{print $5}' | sed 's/%//')

#If it has used less then 70 then this message
if [ "$used" -lt 70 ]; then
    Message="Your ok, you have only used up $used"
#If it has used between 70 and 90 send this message
elif [ "$used" -ge 70 ] && [ "$used" -lt 90 ]; then
    Message= "Keep an eye out, you have used up $used"
#If it has used between 90 and 98 send this message
elif [ "$used" -ge 90 ] && [ "$used" -lt 98 ]; then
    Message= "Please get a new disk. Home is $used full."
#If it has used between 98 and 100 send this message
elif [ "$used" -ge 98 ] && [ "$used" -lt 100 ]; then
    Message= "Im drwoning here!. ClEAN IT UP. Home is $used full."
#Else send this message
else
    Message="Its way too late for me."

fi

echo "$Message"

