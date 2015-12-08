#!/bin/sh
for i in *.pdf
do
	pdf2ps $i
done 
ps2eps *.ps
for i in *.eps
do
	epstopdf $i
done
rm *.ps
rm *.eps