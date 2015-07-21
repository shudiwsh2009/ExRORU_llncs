#!/bin/sh 
ps2eps -l -B -s b0 -c -n *.eps
rename -v -f 's/.eps.eps/.eps/' *.eps
for i in *.eps
do
	epstopdf $i
done