#!/bin/bash

DRV_NAME=rtl8821cu
DRV_VERSION=5.8.1.7
OPTIONS_FILE=8821cu.conf
SCRIPT_NAME=remove-driver.sh

if [[ $EUID -ne 0 ]]; then
	echo "You must run this installation script with superuser priviliges."
	echo "Try \"sudo ./${SCRIPT_NAME}\""
	exit 1
fi

dkms remove ${DRV_NAME}/${DRV_VERSION} --all
RESULT=$?

if [[ "$RESULT" != "0" ]]; then
	echo "An error occurred while running ${SCRIPT_NAME} : $RESULT "
	exit $RESULT
else
	rm -f /etc/modprobe.d/${OPTIONS_FILE}
	rm -rf /usr/src/${DRV_NAME}-${DRV_VERSION}
	echo "${SCRIPT_NAME} was successful."
fi
