#!/bin/bash
ARGS=$@

showError () {
    echo -e "\x1b[41mERROR : $1\x1b[0m"
}

echo "================FILE=READER================"


for ARG in $ARGS 
do
	echo "Reading $ARG..."
	if [ ! -e "$ARG" ]; then
		showError "$ARG does not exist"
	elif [ ! -f $ARG ]
	then
			showError "$ARG is not a file."
	elif [ ! -r $ARG ]
	then
			showError "You don't have permission to read this file : $ARG."
	else 
			echo -e "Name of file : $ARG\nContenu : `cat $ARG`\n" 
	fi

done