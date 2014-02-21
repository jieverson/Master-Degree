#!/bin/sh
set style data histogram
set boxwidth 0.8
set style fill solid border
set style histogram clustered

set xtics font "Times-Roman, 8"

set key outside vertical center top font ",14" spacing 1

set datafile separator ";"

set terminal pdf
set output '../../images/wins_graphic.pdf'

plot for [COL=2:4] 'data/Wins.csv' using COL:xticlabels(1) title columnheader