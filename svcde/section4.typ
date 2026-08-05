#import "@preview/diverential:0.3.0": *

== Vector Calculus

=== Vector Fields

For a scalar function $f$ in $RR^3$, the gradient is $nabla f = (f_x, f_y,
f_z)$.

=== Conservative Vector Fields

A vector field is conservative $<==> F = nabla f$ for some $f$. $f$ is then the
potential function for $F$.

A vector field $F$ is independent of path iff it is conservative.

=== Path Integrals

$ integral_C f(x, y) d s = integral_a^b f(r(t)) abs(r'(t)) d t $
$ integral_C f(x, y) dot d r = integral_a^b (f(r(t)) dot r'(t)) d t $

==== Fundamental Theorem for Line Integrals

$ integral_C nabla f dot d r = f(r(b)) - f(r(a)) $
If $f$ is a smooth differentiable function on $C$ and $C$ is smooth.

=== Green's Theorem

A *simple-curve* is one that does not intersect itself anywhere between its
start and end. A *simply connected region* in the plane is a connected region
$D$ such that every simply closed curve encloses only points in $D$.

If $C$ is a positively oriented, piecewise smooth, simple closed curve in the xy
plane and $D$ is the region enclosed by $C$ and if $P$ and $Q$ have continuous
partial derivitives on an open region that contains $D$.

$ integral_C P d x + Q d y = integral.double_D ( dv(Q, x) - dv(P, y) )d A $

Traverse the curve in the path integral in a counterclockwise direction.

=== Curl and Divergence

Let $F = (P, Q, R)$,

$ nabla = (dv(, x), dv(, y), dv(, z)) $
$ "curl" F = nabla times F = mat(R_y - Q_z; R_x - P_z; Q_x - P_y) #h(2em) "div" F = nabla dot F  $

An *irrotational* field has $"curl" F = (0, 0, 0)$ everywhere in the domain.

A *conservative* field is irrotational and has a simply connected (no holes) domain.

=== Surface Integrals

We parametrize the surface $S$ as $underline(r)(u, v)$

$ integral.double_S f(x, y, z) d S = integral.double_D f(r(u, v)) abs(r_u times
r_v) d A $

If $z = g(x, y)$ and D is its projection on the $x y$ plane under $S$

$ integral.double_S f(x, y, z) d S = integral.double_D f(x, y, g(x, x)) sqrt(1 +
dv(z, x)^2 + dv(z, y)^2)d A $

If $F(x, y, z) = c$, then we can project onto the $x y$ plane, and get

$ integral.double_S f(x, y, z) d S = integral.double_D f(x, y, z)
abs(nabla F)/abs(nabla F dot p) d A #h(2em) p = hat(k) $

=== Common Parametrizations

#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  stroke: 0.5pt,

  [*Surface*], [*Parametrization*],

  [$z = f(x,y)$],
  [$bold(r)(x,y) = chevron.l x, y, f(x,y) chevron.r$],

  [$a x + b y + c z = d$],
  [Solve for one variable, e.g.
   $z = (d - a x - b y)/c$,
   then
   $bold(r)(x,y) = chevron.l x, y, (d - a x - b y)/c chevron.r$],

  [$x^2 + y^2 = R^2$],
  [$bold(r)(theta, z) =
    chevron.l
      R cos theta,
      R sin theta,
      z
    chevron.r$],

  [Cylinder about the $x$-axis],
  [$bold(r)(x, theta) =
    chevron.l
      x,
      R cos theta,
      R sin theta
    chevron.r$],

  [Sphere of radius $R$],
  [$bold(r)(phi, theta) =
    chevron.l
      R sin phi cos theta,
      R sin phi sin theta,
      R cos phi
    chevron.r$],

  [Cone $z = r$],
  [$bold(r)(r, theta) =
    chevron.l
      r cos theta,
      r sin theta,
      r
    chevron.r$],

  [Surface of revolution],
  [Replace the circular coordinates with
   $r cos theta$ and $r sin theta$.],
)

=== Surface Integrals of Vector fields


$hat(n)$ determines the *orientation* of the surface (the direction its pointing
in is the positive side). A smooth surface is *orientable* if there exists such an
$hat(n)$ that varies continuously on $S$ and is normal everywhere on $S$. A
piecewise smooth surface is orientable if whenever 2 component surfaces join at
a boundary curve $C$, they induce opposite orientations along $C$.

$ hat(n) = (r_u times r_v)/(abs(r_u times r_v)) $
$ integral.double_S F dot d underline(S) = integral.double_S F dot hat(n) d S $

=== Stokes Theorem

Let $S$ be an oriented piecewise smooth surface bounded by a simple closed
piecewise smooth boundary curve $C$ with orientation inherited from $S$. Let $F$
be a vector field with continuous partial derivitives on an open region that
contains $S$, then,

$ integral_C F dot d r = integral.double_S "curl" F dot d S = integral.double_S
(nabla times F) dot hat(n) d S $

If the surface $S$ lies in the $x y$ plane with upward orientation, then stokes
theorem gives

$ integral_C F dot d r = integral.double_S F dot k d A $

=== The Divergence Theorem

Let $E$ be a simple 3-dimensional region whose boundary surface S
has positive (i.e., outward) orientation. Let $F$ be a vector field whose component functions
have continuous partial derivatives on an open region that contains $E$. Then,

$ integral.double_S F dot d s = integral.triple_E "div" F d V  $
