#!/bin/sh
set xlabel "Executions"
set ylabel "Q-Value"
set autoscale y
set key outside vertical center top font ",14" spacing 1
set pointsize 0.8
set datafile separator ";"

set terminal pdf
set output '../../images/q-learning_strategies_graphic.pdf'

set xtics add ("30" 30)
set arrow from 30,-4 to 30,12 nohead lc "gray"
set xtics add ("53" 53)
set arrow from 53,-4 to 53,12 nohead lc "gray"

plot 'data/MarineRush.csv' using 2:1 title "Marine Rush" with linespoints pi 1 lc rgb "red",\
     'data/TerranDefensive.csv' using 2:1 title "Terran Defensive" with linespoints pi 1 lc rgb "blue",\
     'data/TerranDefensiveFB.csv' using 2:1 title "Terran Defensive FB" with linespoints pi 1 lc rgb "green",\
     'data/TerranPush.csv' using 2:1 title "Terran Push" with linespoints pi 1 lc rgb "yellow",\
     'data/WraithHarass.csv' using 2:1 title "Wraith Harass" with linespoints pi 1 lc rgb "purple"#,\