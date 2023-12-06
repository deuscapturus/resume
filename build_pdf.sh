#!/bin/bash

if [ -x "`type -P rst2pdf`" ]; then
	FILENAME="Theodore_Cowan_Resume-`date +%F`.pdf"
	echo "Creating PDF $FILENAME"
	rst2pdf -o $FILENAME README.rst --stylesheets=stylesheet.yaml --real-footnotes
	echo "Completed PDF"
else
	echo "Please install rst2pdf" ; exit 1
fi


