#!/usr/bin/env bash

POLY_BAR_REPO_URL='https://github.com/jaagr/polybar.git'

if [ -z "$CUSTOM_SOURCE_DIR" ]
then
	CUSTOM_SOURCE_DIR="$HOME/src"
else 
	echo "Using Predefined CUSTOM_SOURCE_DIR variable with path of $CUSTOM_SOURCE_DIR"	
fi

if [ ! -d "$CUSTOM_SOURCE_DIR" ]
then
	echo "Creating Source Dir at $CUSTOM_SOURCE_DIR"
	mkdir -p  "$CUSTOM_SOURCE_DIR"
fi

cd $CUSTOM_SOURCE_DIR

git clone "$POLY_BAR_REPO_URL" polybar
cd polybar

bash -e ./build.sh


