#import "@preview/diverential:0.3.0": *

== Iterated Integrals

=== Trig Identities

$ sin^2 theta = (1 - cos(2 theta)) / 2 #h(3em) cos^2 theta = (1 + cos(2 theta)) / 2 $
$ sin(2 theta) = 2 sin theta cos theta #h(3em) cos(2 theta) = cos^2 theta - sin^2 theta $

=== General Jacobian

$ J_f = mat(dv(f, x_1), dv(f, x_2), ..., dv(f, x_n)) = mat(dv(f_1, x_1), ...,
  dv(f_1, x_n); ..., ..., ...; dv(f_m, x_1), ..., dv(f_m, x_n)) $

Say $(x, y) -> (u, v)$. First, solve for $x, y$ in terms of $u, v$, then use
that as $f$ in the $J_f$ calculation, and take the determinate. That's what
you'll multiply by in the integral.

=== Polar Coordinates

$ y = r sin theta #h(3em) x = r cos theta #h(3em) d A = r d r d theta $

=== Cylindrical Coordinates

$ x = rho cos phi #h(2em) y = rho sin phi #h(2em) z = z #h(2em) d V = rho d rho d phi d z $

=== Spherical Coordinates

$ x = r sin theta cos phi #h(1em) y = r sin theta sin phi #h(1em) z = r cos
theta #h(1em) $
$ d V = r^2 sin phi d theta d phi d r $

