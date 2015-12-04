set datafile separator ","
set output 'fig_scalability_breadth.pdf'
set xlabel "Num. of Concurrent Branches"
set ylabel "Time Cost(ms)"
#set xrange [0:60]
set yrange [0:1000]
set xtics 10
set ytics 100
set key inside top center vertical box spacing 1.2 width 2 samplen 5
plot 'breadth.dat' using 2:xtic(1) title "TAR",\
		'' using 3 title "BP",\
		'' using 4 title "PTS",\
		'' using 5 title "CFS",\
		'' using 6 title "ExRORU",
set output

unset key
#unset title
#unset ylabel
unset logscale y
set yrange [*:*]
set ytics autofreq
#unset xlabel
set xtics autofreq
set xrange [*:*]