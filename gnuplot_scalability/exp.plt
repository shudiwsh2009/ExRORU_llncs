
#===================================
reset
set terminal postscript eps color enhanced font ",18"
set size 0.6,0.6

set style data linespoints

#set style line 1 lt 1 pt 7  ps 1.0 lw 3 lc rgb "black"
set style line 2 lt 1 pt 2  ps 2.0 lw 3 lc rgb "blue"
set style line 3 lt 1 pt 1  ps 3.0 lw 3 lc rgb "red"
set style line 4 lt 1 pt 8  ps 2.0 lw 3 lc rgb "orange"
set style line 5 lt 1 pt 4  ps 2.0 lw 3 lc rgb "green"
set style line 6 lt 1 pt 10 ps 2.0 lw 3 lc rgb "blue"
set style line 7 lt 1 pt 6  ps 2.0 lw 3 lc rgb "red"
set style line 8 lt 1 pt 12 ps 3.0 lw 3 lc rgb "orange"
set style line 9 lt 1 pt 3  ps 3.0 lw 3 lc rgb "violet"
set style line 10 lt 1 pt 12 ps 3.0 lw 3 lc rgb "black"
set style increment user


set title "" offset 0,-1
set ylabel "" offset 2
set xlabel "" offset 0,0.5
set xtics autofreq
set xrange [*:*]
set ytics autofreq
set yrange [*:*]

#===================================
load 'breadth.plt'
load 'depth.plt'