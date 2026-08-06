#import "@preview/diverential:0.3.0": *

=== Reducible ODEs

A general 2nd-order ODE has the form,

$ F(y'', y', y, x) = 0 $

An ODE,

$ F(y'', y', x) = 0 $

Can be solved using the change of variable $v(x) = y'$.

=== Euler Equations

An Euler Equation has the form,

$ a x^2 dv(y, x, deg: 2) + b x dv(y, x) + c y = 0 $

Where $a, b, c in RR$ and $a eq.not 0$.

The leading coefficient vanishes at $x=0$, so we if we restrict our attention to
$x>0$, we can use the dependent variable $t = ln x, x > 0$, which gives us the
equivilent form

$ a dv(y, t, deg: 2) + (b - a) dv(y, t) + c y = 0 $

Which we can then solve like a Linear Homogenous ODE with Constant Coefficients
(characteristic equation $a r^2 + (b-a) r + c = 0$).

=== Series Solutions for Linear Homogenous ODEs

We can use a power series to construct a fundamental set of solutions,

$ sum_(n=0)^infinity a_n (x-b)^n $

The *radius of convergence*,
$ rho = lim_(n->infinity) abs(a_n / a_n+1) gt.eq 0 $
means that,
$ sum_(n=0)^infinity a_n (x-b)^n "converges absolutely for" abs(x - b) lt rho $
$ sum_(n=0)^infinity a_n (x-b)^n "diverges for" abs(x - b) gt rho $
$ sum_(n=0)^infinity a_n (x-b)^n "either converges or diverges for" abs(x-b)=rho $

Power series are unique.

Consider the homogenous ODE

$ P(x) dv(y, x, deg: 2) + Q(x) dv(y, x) + R(x)y(x) = 0$

Or if $p=Q(x)/P(x)$ and $q=R(X)/P(X)$

$dv(y, x, deg: 2) + p(x) dv(y, x) + q(x) y(x)$

The point $x=a$ is an *ordinary point* of the equation if $p(x)$ and $q(x)$ are
both analytic at $x=a$; otherwise $x=a$ is a *singular point*.

If $P(x)$, $Q(x)$, $R(x)$ are polynomials with no common factors, then $x=a$ is
a singular point iff $P(a)=0$, else an ordinary point.

If $x=b$ is an ordinary point of the ODE, then the general solution can be
expressed as
$ y(x) = sum_(n=0)^infinity a_n (x-b)^n = C_0 y_1(x) + C_1 y_2(x) $
Further, $y_1$ and $y_2$ are linearly independent, the radius of convergence for
each of them is at least as large as the minimum of the radiuses of convergence
of the power series for $p$ qnd $q$. The coefficients can be determined by
substitution into the equation.

==== Useful Equations for ODEs with Power Series

Around $x=0$,

$ y(x) = sum_(n=0)^infinity a_n x^n $
$ y'(x) = sum_(n=1)^infinity n a_n x^(n-1) $
$ y''(x) = sum_(n=2)^infinity (n-1)n a_n x^(n-2) $


