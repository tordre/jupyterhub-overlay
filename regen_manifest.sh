#!/bin/bash

ebuilds=`find dev-python/ www-servers/ -name *.ebuild`

for file in $ebuilds
do
	ebuild $file manifest
done
