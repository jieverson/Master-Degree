#!/bin/sh
set xlabel "Executions"
set ylabel "Q-Value"
set autoscale y
set key outside vertical center top font ",14" spacing 1
set pointsize 0.8
set datafile separator ";"

set terminal pdf
set output '../../images/learning-rate_graphic.pdf'

set xtics add ("30" 30)
set arrow from 30,0 to 30,0.6 nohead lc "gray"

plot 'data/LearningRate.csv' using 1 title "Learning Rate" with linespoints pi 1 lc rgb "red"