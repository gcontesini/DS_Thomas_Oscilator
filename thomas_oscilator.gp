
# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC START
reset

set terminal png

data_pnt="ts_thomas_oscilator.dat"

# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC STATS

do for [COL=1:4] {stats data_pnt u COL name sprintf("stats_%d",COL) nooutput}

# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC SINGLE TS

set view 58,357,1,1
set mapping cartesian
set grid 
set palette defined (1 'blue', 2 'red' )
# help border
set pm3d at b
set output "thomas_oscilator_attractor.png"
set label 1 "" at sprintf("%f %f %f",stats_2_mean, stats_3_mean, stats_4_mean) point pt 7 lw 1.5
splot data_pnt u 2:3:4 w l lc palette

reset

set grid 
set yrange[-30:40]
set arrow 5 from 160, stats_2_mean to 160, stats_2_min 
set label 5 at 160, stats_2_min-1.5 sprintf("%f",stats_2_mean) center
plot data_pnt u 1:2 notitle w l
replot stats_2_mean lt rgb "black" title "mean" 
set output "thomas_oscilator_x_ts.png"
replot

reset

set grid 
set yrange[-30:30]
set arrow 5 from 155, stats_3_mean to 155, stats_3_min
set label 5 at 155, stats_3_min-1.5 sprintf("%f",stats_3_mean) center 
plot data_pnt u 1:3 notitle w l
replot stats_3_mean lt rgb "black"  title "mean"
set output "thomas_oscilator_y_ts.png"
replot

reset

set grid 
set yrange[-5:140]
set arrow 5 from 160, stats_4_mean to 160, stats_4_max-10
set label 5 at 160, stats_4_max+2-10 sprintf("%f",stats_4_mean) center 
set yrange[-2:140]
plot data_pnt u 1:4 notitle w l
replot stats_4_mean lt rgb "black"  title "mean"
set output "thomas_oscilator_z_ts.png"
replot

reset

set grid
# set xrange[0:1]
set yrange[:3]
# set yrange [1e-3:1e2]
f(x) = a*x+b
fit[0:2] f(x) data_pnt u 1:5 via a,b
a = 0.0208616
b = -4.71904
plot[0:10] data_pnt u 1:5 notitle
replot[0:2] f(x) lt rgb "black" lw 2 title "L_{exp} = 0.0208616"
set output "thomas_oscilator_lyapunov_exp.png"
replot

reset

# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC TAKENS THEOREM

reset

takens_x_data_pnt = "takens_x_data_pnt.dat"
set grid
set view 64, 352, 0.902, 1.43333
splot takens_x_data_pnt u 2:3:4 w l title "x ts"
set output "thomas_x_takens_theorem.png"
replot 

takens_y_data_pnt = "takens_y_data_pnt.dat"
set grid
set view 55, 34, 0.902, 1.43333
splot takens_y_data_pnt u 2:3:4 w l title "y ts"
set output "thomas_y_takens_theorem.png"
replot 

takens_z_data_pnt = "takens_z_data_pnt.dat"
set grid
set view 59, 76, 0.902, 1.43333
splot takens_z_data_pnt u 2:3:4 w l title "z ts"
set output "thomas_z_takens_theorem.png"

takens_data_pnt = "takens_data_pnt.dat"
set grid
set view 64, 352, 0.902, 1.43333
splot takens_data_pnt u 2:3:4 w l
set output "thomas_takens_theorem.png"


replot

# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC MULTIPLOT

reset

set autoscale
set output "thomas_oscilator_rk4.png"
set multiplot

set size 0.5, 0.5 
set origin 0, 0
splot data_pnt u 2:3:4 notitle w l
set origin 0, 0.5
# set xrange[0:50]
# set yrange[-20:30]
plot data_pnt u 1:2 w l title "x ts"
set origin 0.5, 0 
# set yrange[-30:40]
plot data_pnt u 1:3 w l title "y ts"
set origin 0.5, 0.5
# set yrange[0:60]
plot data_pnt u 1:4 w l title "z ts"

reset
# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC END