#!/bin/bash

for epsname in "$@"; do
	pathname=`dirname $epsname`
	if [ -z $pathname ]; then
		name=`basename $epsname .eps`
	else
		name=$pathname/`basename $epsname .eps`
	fi
	pdfname=$name.pdf
	if [ $epsname = $name ]; then
		echo File extension .eps expected for conversion, skipping $epsname
	else
		if [ -e "$epsname" ]; then
			if [ "$pdfname" -ot "$epsname" ]; then
				echo +++ Converting     $epsname to $pdfname
				epstopdf $epsname
			else
				echo --- Not converting $epsname to $pdfname
			fi
		else
			echo Source file $epsname does not exist!
		fi
	fi;
done
