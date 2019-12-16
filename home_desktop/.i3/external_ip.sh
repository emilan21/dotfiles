#!/bin/bash

IP=$(curl 'https://api.ipify.org?format=text')

case $BLOCK_BUTTON in
	3) echo "$IP" | xclip ;;
	*) echo "$IP" ;;
esac
