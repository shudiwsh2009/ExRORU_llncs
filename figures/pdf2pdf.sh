#!/bin/sh
for pdf in *.pdf
do
	prefix=${pdf:0:${#pdf}-4}
	prefix=`echo $prefix | sed 's/[^a-zA-Z0-9.]/_/g'`
	mv "$pdf" ${prefix}".pdf"
	pdf2ps ${prefix}".pdf" ${prefix}".ps"
	ps2epsi ${prefix}".ps" ${prefix}".eps"
	epstopdf ${prefix}".eps"
	rm ${prefix}".ps"
	rm ${prefix}".eps"
done
