set term pdfcairo dashed lw 2 font "Times New Roman,宋体,9"
#set term pngcairo lw 2 font "Times New Roman,宋体,9"
set datafile separator ","
set output 'depth.pdf'
set xlabel "Num. of Transitions on Each Branch"
set ylabel "Time Cost(ms)"
set xrange [0:12]
set yrange [0:1000]
set ytics 0.05
set xtics 100
set key outside right center vertical nobox
plot 'property1.dat' u 1:2 w lp pt 1 lc "#622a1d" ps 0.6 title "TAR",\
		'property1.dat' u 1:3 w lp pt 3 lc "#44CEF6" ps 0.5 title "BP",\
		'property1.dat' u 1:4 w lp pt 7 lc "#801DAE" ps 0.6 title "PTS",\
		'property1.dat' u 1:5 w lp pt 11 lc "#ffa631" ps 0.5 dt 2 title "CFS",\
		'property1.dat' u 1:6 w lp pt 2 lc "#ff2121" ps 0.6 title "ExRORU"