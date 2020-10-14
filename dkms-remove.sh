#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo "You must run this installation script with superuser priviliges."
  echo "Try \"sudo ./dkms-remove.sh\""
  exit 1
fi

DRV_NAME=rtl8821cu
DRV_VERSION=5.8.1.4

dkms remove ${DRV_NAME}/${DRV_VERSION} --all
rm -rf /usr/src/${DRV_NAME}-${DRV_VERSION}

RESULT=$?

if [[ "$RESULT" != "0" ]]; then
  echo "An error occurred while running dkms-remove.sh."
else
  echo "dkms-remove.sh was successful."
fi

exit $RESULT
