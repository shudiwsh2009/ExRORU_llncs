set term pdfcairo dashed lw 2 font "Times New Roman,宋体,9"
#set term pngcairo lw 2 font "Times New Roman,宋体,9"
set datafile separator ","
set output 'fig_property_1_comp.pdf'
set xlabel ""
set ylabel ""
set xrange [1.5:12.5]
set yrange [0.75:1]
set ytics 0.05
set xtics ("N2" 2, "N3" 3, "N4" 4, "N5" 5,\
		"N6" 6, "N7" 7, "N8" 8, "N9" 9, "N10" 10,\
		"N11" 11, "N12" 12)
set key outside right center vertical nobox
plot 'property1.dat' u 1:2 w lp pt 1 lc "#622a1d" ps 0.6 title "TAR",\
		'property1.dat' u 1:3 w lp pt 7 lc "#44CEF6" ps 0.5 title "BP",\
		'property1.dat' u 1:4 w lp pt 3 lc "#801DAE" ps 0.6 title "PTS",\
		'property1.dat' u 1:5 w lp pt 11 lc "#ffa631" ps 0.5 dt 2 title "CFS",\
		'property1.dat' u 1:6 w lp pt 2 lc "#ff2121" ps 0.6 title "ExRORU"