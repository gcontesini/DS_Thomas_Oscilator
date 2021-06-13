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

![original Thomas attractor]("url here")

![x ts]("url here")

![y ts]("url here")

![z ts]("url here")

![Lyapunov Exponent]("url here")

With a lyapunov exponent of 0.0208616 and a Lyapunov time of  the system is deterministic and not stochastic.

## Kolmogorov Entropy

To Do

## Taken's Theorem

Taken's theorem used with only the x ts.

This is black magic for sure!

![Reconstruction of the thomas attractor based on taken's theorem]("url here")
