#!/bin/sh
for i in *.pdf
do
	pdf2ps $i
done 
ps2eps -l -B -s b0 -c -n *.ps
rm *.ps
