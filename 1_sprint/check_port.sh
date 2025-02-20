#!/bin/bash
. ./tests-second-floor/1_sprint/print_err.sh
. ./tests-second-floor/1_sprint/ERRORS_KEYS.sh

npm ci && npm run start &
sleep 60

PORT=$(netstat -an | grep ':3000 ')
if [[ -z $PORT ]]
then
	print_err $PORT_ERR
	exit 1
fi

exit 0
