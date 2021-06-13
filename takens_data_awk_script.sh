
awk -F "\t" '$1 {print $2}' ts_thomas_oscilator.dat > takens_x_no_lag.dat
awk -F "\t" '$1>0.30 {print $2}' ts_thomas_oscilator.dat > takens_x_first_lag.dat
awk -F "\t" '$1>0.60 {print $2}' ts_thomas_oscilator.dat > takens_x_second_lag.dat

awk -F "\t" '$1 {print $3}' ts_thomas_oscilator.dat > takens_y_no_lag.dat
awk -F "\t" '$1>0.30 {print $3}' ts_thomas_oscilator.dat > takens_y_first_lag.dat
awk -F "\t" '$1>0.60 {print $3}' ts_thomas_oscilator.dat > takens_y_second_lag.dat

awk -F "\t" '$1 {print $4}' ts_thomas_oscilator.dat > takens_z_no_lag.dat
awk -F "\t" '$1>0.30 {print $4}' ts_thomas_oscilator.dat > takens_z_first_lag.dat
awk -F "\t" '$1>0.60 {print $4}' ts_thomas_oscilator.dat > takens_z_second_lag.dat


paste takens_x_no_lag.dat takens_x_first_lag.dat takens_x_second_lag.dat | awk 'NR<19940 {print NR "\t" $0}' > takens_x_data_pnt.dat
paste takens_y_no_lag.dat takens_y_first_lag.dat takens_y_second_lag.dat | awk 'NR<19940 {print NR "\t" $0}' > takens_y_data_pnt.dat
paste takens_z_no_lag.dat takens_z_first_lag.dat takens_z_second_lag.dat | awk 'NR<19940 {print NR "\t" $0}' > takens_z_data_pnt.dat

rm takens_*_no_lag.dat
rm takens_*_first_lag.dat
rm takens_*_second_lag.dat

awk -F "\t" '$1 {print $2}' ts_thomas_oscilator.dat > takens_no_lag.dat
awk -F "\t" '$1>0.30 {print $2}' ts_thomas_oscilator.dat > takens_first_lag.dat
awk -F "\t" '$1>0.60 {print $2}' ts_thomas_oscilator.dat > takens_second_lag.dat

paste takens_no_lag.dat takens_first_lag.dat takens_second_lag.dat | awk 'NR<19940 {print NR "\t" $0}' > takens_data_pnt.dat

rm takens_no_lag.dat
rm takens_first_lag.dat
rm takens_second_lag.dat

