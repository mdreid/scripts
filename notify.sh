#!/bin/bash

# Script to run program with args and email when finished
# Usage: notify.sh <list of space delimited email addresses> <cmds to run>

if [ $# -lt 2 ]
then
    printf "%b" "Error. Not enough arguments.\n" >&2
    printf "%b" "Usage: notify.sh <list of space delimited email-address> <script-to-run>\n"
    exit 1
fi

emails=""
count=1
for arg in "$@"
do
    if [[ $arg == *"@"* ]] ; then
        echo "Email address: $arg"
        emails="$emails $arg"
        #count=$(( count + 1))
        shift
    else
        break
    fi
done

timestamp=$(date +%Y-%m-%d_%H%M%S)
printf "%b" "Job submitted at $timestamp \n"
$@
rc=$?
echo "Sent to $emails"
echo "$@ has completed with return value $rc" | mailx -s "Job submitted at $timestamp finished " $emails
exit 0
