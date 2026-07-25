#import "@preview/diverential:0.3.0": *

== Vectors and Geometry

=== Dot and Cross Products

$ a dot b = abs(a) abs(b) cos(theta) $
$ abs(a times b) = abs(a) abs(b) sin(theta) $
$ a times b = det mat(i, j, k; a_1, a_2, a_3; b_1, b_2, b_3) $

So, two vectors are orthogonal $<==> a dot b = 0.$

Direction cosigns are defined as $cos alpha = (a dot i)/(abs(a) dot abs(i))$ and
  with $b$ and $c$ is typically notated as $beta$ and $gamma$

=== Volumes
$ "The volume of the parallelpiped with vectors" a, b, c "is" a dot (b times c) $

=== Lines and Planes

The line is $r = r_0 + t v$ or equivilently $(x - x_0)/v_1 = (y - y_0)/v_2 = (z
- z_0)/v_3$.

The plane is given by $n dot (r - r_0) = 0$ or wlog $n_1 x + n_2 y + n_3 z + d = 0$
  for some $d$.

The distance between two planes is 0 unless they're parallel ($n_1 = n_2$), in which case it's
  $abs(d_1 - d_2)/sqrt(a^2 + b^2 + c^2)$.

The distance between a point and a plane is $abs(a x_0 + b y_0 + c z_0 + d)/sqrt(a^2
  + b^2 + c^2)$

The distance between a line and a plane is 0 unless they're parallel ($v dot n =
  0$) in which case all points are equidistant to the plane, so pick any point
  and use the point to plane formula.

The distance between two lines that intersect is 0, the distance between two
  lines $r_1 = a + lambda d_1$ and $r_2 = b + mu d_2$ that are parallel is always
  equal, so pick a point on one and use the point to line. Otherwise (they're
  skew), use $abs((b-a) dot (d_1 times d_2))/abs(d_1 times d_2)$

The distance between a point and a line is $abs((b - a) times d)/abs(d)$


=== Tangent Vectors

$r'(a)$ is the tangent vector of the curve at point $a$.

Then the unit tangent vector is given by $T(t) = (r'(t))/(abs(r'(t)))$

Then the curvature is $kappa = abs(dv(T, s)) = abs(dv(T, t) dv(t, s))$. So,
  $kappa = abs(T'(t))/abs(s'(t)) = abs((T'(t)))/abs(r'(t))$. Further, $kappa =
  abs(r'(t) times r''(t))/abs(r'(t))^3$.

The principle unit normal vector is given by
$N(t) = (T'(t))/abs(T'(t))$

The binormal vector is given by $B(t) = T(t) times N(t).$

Also, $N(t) = B(t) times T(t)$ and $T(t) = N(t) times B(t)$, and ${T, B, N}$ form a right handed basis of unit vectors for $RR^3$
