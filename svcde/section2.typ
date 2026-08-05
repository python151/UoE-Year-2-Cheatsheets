#import "@preview/diverential:0.3.0": *

== Partial differentiation

=== Limits of functions of several variables

If a function is of multiple variables, e.g. $f(x_0, x_1, ..., x_i)$ we can take
a limit across multiple of them $lim_((x_0, x_1, ..., x_i)->(a_0, a_1, ...,
a_i)) f = L$, which is only defined if _every_ path to the point $a$ approaches
$L$.

For instance, we can check the limit from the $x_0$-axis by holding all other
variables constant. Or along a line by parametrizing all other variables with
respect to one variable.

=== Partial derivitives

Remember that the derivitive of $g(x)$ is defined as a limit with respect to
$x$. If we apply the same to $f$ we can then take that limit as it approaches
from a single variable. This is called a partial derivitive, notated as $dv(f,
  x_0)$ or $f_(x_0)$. Note that $f_(x y) = f_(y x)$ (derivitives commute).

We can take the directional derivitive by applying this limit along the line
defined by some vector $u$. This reduces to $D_u f(x, y) = u_0 f_x (x, y) +
u_1 f_y (x, y)$. This is maximized when $u$ is the gradient vector.

We define the gradient, $nabla f(x, y) = mat(f_x, f_y)^T$

=== General chain rule

Suppose $z$ is a differentiable function of $x_1, x_2, ..., x_n$ and each of
$x_j$ is a differentiable function of $t_1, t_2, ..., t_m$. Then,
$ dv(z, t_i) = dv(z, #highlight[x_1]) dv(#highlight[x_1], t_i) + dv(z,
  #highlight[x_2]) dv(#highlight[x_2], t_i) + ... + dv(z, #highlight[x_n])
dv(#highlight[x_n], t_i) $
For each $i = 1, 2, ..., m$.

=== Implicit differentiation

Implicit Function Theorem: If $F(x, y, z)$ is defined within a sphere containing
$(a, b, c)$ where $F(a, b, c) = 0$, $F_z (a, b, c) eq.not 0$ and $F_x, F_y, F_z$
are continuous inside the sphere, then $F(x, y, z) = 0$ defines $z$ as a
differentiable function of $x$ and $y$ near the point $(a, b, c)$ with partial
derivitives below.

$ dv(z, x) = -(dv(F, #highlight[x]) / dv(F, z)) #h(3em) dv(z, y) = -(frac(dv(F,
  #highlight[y]), dv(F,
  z))) $

=== Differentials

$ d z = f_x (x, y) d x + f_y (x, y) d y = dv(z, x) d x + dv(z, y) d y $

=== Tangent planes to level surfaces

The tangent plane to the level surface $F(x, y, z) = k$ as the plane that passes
through $(x_0, y_0, z_0)$ and has normal vector $nabla F(x_0, y_0, z_0)$
(provided $nabla F(x_0, y_0, z_0) eq.not 0$).


=== Second derivitives test
$ D(a, b) = abs(mat(f_(x x) (a, b), f_(x y) (a, b);
f_(x y) (a, b), f_(y y) (a, b))) $

$ D > 0 "and" f_(x x) > 0 => "local min" $
$ D > 0 "and" f_(x x) < 0 => "local max" $
$ D < 0 => "saddle point where the graph crosses a tangent line" $
$ D = 0 => "inconclusive" $

General form is called the Hessian Matrix.

=== Lagrange multipliers

Say we have $L(x, y, lambda) = f(x, y) - lambda g(x, y)$, where $f$ is what we
want to maximize and subject to constraints $g(x, y) = 0$. Then any critical
point of $L$ will be a critical point of $f$ subject to $g$ and $lambda$ is
called a lagrange multiplier.

=== Distance between a surface and a point

For a surface $F(x, y, z) = 0$, minimize the distance between $P "and" Q$, where
Q is some point on the plane and $P$ is the (usually known) point we're trying
to minimize the distance to, subject to the constraint of the surface given
(often using Lagrange multipliers).

