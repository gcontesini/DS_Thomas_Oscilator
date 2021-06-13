# DS_Thomas_Attractor

## System

$\frac{dx}{dt} = -bx - \sin(y)$
$\frac{dy}{dt} = -by -\sin(z)$
$\frac{dz}{dt} = -bx + \sin(x)$

## Method

Simpletic Runge-Kutta of 4 order

### Global Conditions

time_step = 0.01

### Initial Conditions

x_0 = 1
y_0 = 1
z_0 = 1

for the Lyapunov calculation a $\delta=1e^{-6}$ was add to the original IC.

## Results 

![original Thomas attractor](https://github.com/gcontesini/Thomas_Oscilator/blob/master/thomas_oscilator_attractor.png)

![x ts](https://github.com/gcontesini/Thomas_Oscilator/blob/master/thomas_oscilator_x_ts.png)

![y ts](https://github.com/gcontesini/Thomas_Oscilator/blob/master/thomas_oscilator_y_ts.png)

![z ts](https://github.com/gcontesini/Thomas_Oscilator/blob/master/thomas_oscilator_z_ts.png)

**!!WRONG!!**

![Lyapunov Exponent](https://github.com/gcontesini/Thomas_Oscilator/blob/master/thomas_oscilator_lyapunov_exp.png) 

**!!WRONG!!**

With a lyapunov exponent of 0.0208616 and a Lyapunov time of  the system is deterministic and not stochastic.

## Kolmogorov Entropy


To Do


## Taken's Theorem

Taken's theorem used with only the x ts.

This is black magic for sure!

![Reconstruction of the thomas attractor based on taken's theorem]("url here")
