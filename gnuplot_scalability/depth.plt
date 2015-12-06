set datafile separator ","
set output 'fig_scalability_depth.pdf'
set xlabel "Num. of Transitions on Each Branch"
set ylabel "Time Cost (ms)"
#set xrange [0:12]
set yrange [0:1000]
set xtics 1
set ytics 100
plot 'depth.dat' using 2:xtic(1) title "TAR",\
		'' using 3 title "BP",\
		'' using 4 title "PTS",\
		'' using 5 title "CFS",\
		'' using 6 title "ExRORU",
set output
