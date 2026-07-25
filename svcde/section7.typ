#import "@preview/diverential:0.3.0": *

== Second-order Linear ODEs

A linear second order ODE has the form

$ P(t) y'' + Q(t) y' + R(t) y = G(t) $

Provided that $P(t) eq.not 0$, it can be expressed as

$ y'' + p(t) y' + q(t) y = g(t) $

=== Linear Independence

$ W(y_1, y_2) = det(mat(y_1, y_2; y_1 ', y_2 ' )) = y_1 y_2 ' - y_1 ' y_2 $

If $y_1$, $y_2$ are differentiable on an open interval $I$,
- If $W(y_1, y_2)(t_0) eq.not 0$ at some point $t_0 in I$, then $y_1, y_2$ are
linearly independent on $I$.
- If $y_1, y_2$ are independent on $I$ then $W(y_1, y_2)(t) = 0$ for all $t in
I$.

==== Abel's Theorem

Suppose that $y_1$, $y_2$ are two solns to the homogenous ODE,

$ y'' + p(t) y' + q(t) y = 0 $

where $p, q$ are coontinuous on an open interval $I$. Then the Wronskian

$ W(y_1, y_2) = C exp(- integral p(t) d t ) $

=== Method of Reduction of Order

If we know one solution, to the linear homogenous ODE, then we can plug this in
to reduce the order $y(t) = v(t) y_1(t)$.

=== Linear Homogenous ODEs with Constant Coefficients

$ a y'' + b y' + c y = 0 $

has the characteristic equation $a r^2 + b r + c = 0$.

If the solutions are real $r_1$ and $r_2$, then

$ y = C_1 e^(r_1 t) + C_2 e^(r_2 t) $

If the solutions are complex $r_1, r_2$, then

$ y_1 = exp(-b/2a t) $

and similar for $y_2$.

=== Linear Non-Homogenous ODEs with Constant Coefficients

$ a y'' + b y' + c y = g(t) $

Then the complentary equation is the homogenous version (where we make
$g(t)=0$). If the solution to the nonhomogenous version is $Y_1, Y_2$, then their
difference is a solution of the complementary equation.

$ Y_1(t) - Y_2(t) = C_1 y_1(t) + C_2 y_2(t) $

If we let $Y_1$ be an arbitrary solution $y_t$ to the nonhomogenous version, and
$Y_2$ be a particular solution, then the general solution can be expressed as

$y(t) = y_c(t) + y_p(t)$

Where $y_c(t) = C_1 y_1(t) + C_2 y_2(t)$ and is called the complementary
function.

So to solve we:
- Find the general solution $y_c$ of the homogenous equation
- Find any particular solution
- Add them to get the general solution

There are two main ways of finding a particular solution:
- Method of Underdetermined Coefficients
- Method of Variation of Parameters

==== Method of Underdetermined Coefficients

$ g(t) = M e^(k t) $
- If k is not a root of the characteristic equation, try $y_p (t) = C e^(k t)$
- If k is a root of the characteristic equation, try $y_p (t) = C t e^(k t)$
- If k is a repeated root of the characteristic equation, try $y_p (t) = C t^2 e^(k t)$

$ g(t) = M cos (k t) + N sin (k t) $
- If $plus.minus i k$ are not roots of the characteristic equation, try $y_p = C
cos(k t) + D sin(k t)$
- If $plus.minus i k$ are roots of the characteristic equation, try $y_p = t(C
cos(k t) + D sin(k t))$

$ g(t) = a_n t^n + a_(n-1) t^(n-1) + ... + a_1 t + a_0 $
- If 0 is not a root of the characteristic equation, try $y_p (t) = b_n
t^n + b_(n-1) t^(n-1) + ... b_1 t + b_0 $
- If 0 is a root of the characteristic equation, try $y_p (t) = t(b_n
t^n + b_(n-1) t^(n-1) + ... b_1 t + b_0) $
- If 0 is a repeated root of the characteristic equation, try $y_p (t) = t^2(b_n
t^n + b_(n-1) t^(n-1) + ... b_1 t + b_0) $

==== Method of Variation of Parameters

The general form is this primeval chaos-monster:

$ y_p (t) = -y_1 (t) integral ((y_2 g(t))/(a W(y_1, y_2)))  d t + y_2 (t)
integral ((y_1 (t) g(t))/(a W(y_1, y_2))) d t  $
