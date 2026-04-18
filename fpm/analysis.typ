#import "utils.typ": grouped

#let grouped_internal(content, color: black) = grouped(content, color: color)
#let grouped(content, color: black) = grouped_internal(content, color: color)
// Change defaults for this file in this function ^^^

= Analysis

== The Real Numbers

#grouped([
=== The Absolute Value
==== Definition
We define the absolute value operator
$ |x| := cases(
    x "if" x gt.eq 0,
    -x "if" x < 0
) $
==== Properties
- (Positive definite) $|a| gt.eq 0$. $|a|=0 <==> a = 0$
- (Symmetry) $|a - b| = |b - a|$
- (Triangle Inequality) $|a+b| lt.eq |a| + |b|$
It then follows that:
- $x < y + epsilon #v(.25cm) forall epsilon > 0 #v(.25cm) <==> x lt.eq y$
- $x < y - epsilon #v(.25cm) forall epsilon > 0 #v(.25cm) <==> x gt.eq y$
- $x < epsilon #v(.25cm) forall epsilon > 0 #v(.25cm) <==> x = 0$
])
#grouped([
=== LUB and GLB
Let $S subset RR$ be non-empty
- The set $E$ is said to be bounded above if $exists M in RR forall a in E #v(.25cm) a lt.eq M$
- A real number $s$ is called the supremum of $E <==>$
    - s is an upper bound of E
    - $s lt.eq M$ for all upper bounds $M$ of $E$.
If the number $s$, exists we write $s = sup(E)$
])
#grouped([
=== Completeness Axiom
If $E subset RR$ is nonempty and bounded above, $E$ has a supremum.
])
#grouped([
=== Archimedian Principle
Given $a,b in RR_+$ there is an integer $n in NN$ such that $b < n a$
])
#grouped([
=== Extended Real Numbers $RR^*$

$ RR^* = RR union {-infinity, infinity} $

We then let
- $-infinity < a$,
- $a < infinity$,
- and $-infinity < infinity$ for all $a in RR$.
Note that, for instance, the following are undefined: $infinity - infinity$, $0 dot infinity$, $infinity / infinity$, $a / 0$
])
#grouped([
=== Supremums
We can redefine the supremum and infinum to work such that $sup E = infinity
    <==> E "is unbounded above"$ and $inf E = -infinity <==> E "is unbounded below."$
])
#grouped([
=== Injections, Surjections, and Bijections
Let function $f: X -> Y$, then
- f is one-to-one (or injective) if $x_1, x_2 in X "and" f(x_1) = f(x_2) ==> x_1 = x_2$
- f is onto (or surjective) if for every $y in Y$ there exists some $x in X$ such that $y = f(x)$
Functions that are both injective and surjective are also bijective.
])
#grouped([
=== Countability Definition
- $E$ is said to be finite if either $E = emptyset$ or if there exists a bijection
    ${1, 2, ..., n} -> E$, we say E is of size $n$.
- $E$ is said to be countable if there exists a bijective function $f: NN -> E$
- $E$ is at most countable if E is finite or countable.
- $E$ is uncountable if E is neither finite or countable.
])
#grouped([
=== Countability Properties
- (Cantor) $(0, 1)$ is uncountable
- If $S_1$ and $S_2$ are countable, then $S_1 union S_2$ is countable (a similar
    theorem holds for being at most countable)
- If $B "is at most countable"$ and $A subset B$, then $A$ is at most countable.
- If $A$ is uncountable, and $A subset B$, then $B$ is uncountable.
- If $A_1, A_2$ are at most countable, then $A_1 times A_2$ are at most
    countable.
])

== Real Sequences

#grouped([
=== Limit of Real Sequences Definition
A real sequence $(x_n)$ converges to a real number $a$ if for every $epsilon >
0$, there is an $N in NN$ such that
$ forall n gt.eq N text("we have") |x_n - a| > epsilon. $
The sequence is said to diverge to $infinity$ if for each $M in RR$, there is $N
in NN$ such that
$ forall n gt.eq N text("we have") x_n > M. $
The sequence is said to diverge to $-infinity$ if for each $m in RR$, there is $N
in NN$ such that
$ forall n gt.eq N text("we have") x_n < m. $
])

#grouped([
=== Limit Theorems

- Every convergent sequence is bounded
- Squeeze Theorem: If both $x_n -> a$ and $y_n -> a$ as $n -> infinity$, and if
$ x_n lt.eq a_n lt.eq y_n text("for all") n gt.eq N_0, $
then, $a_n -> a$ as $n -> infinity$
- Let $E subset RR$, if $E$ has a finite supremum (i.e. $E$ is non-empty and bounded above), then there is a sequence $(x_n)$ with each $x_n in E$ such that $x_n -> sup E$ as $n -> infinity$. A similar statement holds if $E$ has a finite infinum (i.e. $E$ is non-empty and bounded below).
- If $x_n$ and $y_n$ converge (and if $alpha in RR$), then
    - $ lim_(n->infinity) (x_n + y_n) = lim_(n->infinity) x_n +
    lim_(n->infinity) y_n $
    - $ lim_(n->infinity) (x_n y_n) = lim_(n->infinity) x_n dot
    lim_(n->infinity) y_n $
    - $ lim_(n->infinity) (alpha x_n) = alpha lim_(n->infinity) x_n $
    - If $lim_(n->infinity) y_n eq.not 0$ and $y_n eq.not 0$ for all $n in NN$, then
    $ lim_(n->infinity) (x_n/y_n) = (lim_(n->infinity) x_n) /
    (lim_(n->infinity) y_n) $
- If $x_n lt.eq y_n$ for all $n gt.eq N$ for some $N in NN$, then
    $lim_(n->infinity) x_n lt.eq lim_(n->infinity) y_n$
])

#grouped([
 === Monotone Sequences

])
#grouped([
=== Subsequences
])

== Infinite Series

#grouped([
=== Definitions
Let $S=sum_(k=1)^(infinity)a_k$ be an infinite series with terms $a_k$. For each
    $n$ the partial sum of order $n$ is
$ s_n = sum_(k=1)^n a_k $
The series $S$ converges to some $s <==>$
$ lim_(n->infinity) s_n = s. $
])
#grouped([
=== Divergence Test
If $a_n arrow.r.not 0$ as $n -> infinity$, then its series $S=sum_(k=1)^(infinity)a_k$ diverges.
])
#grouped([
=== Boundedness
Suppose $a_k gt.eq 0$ for large $k$. Then, $a_k$'s series converges $<==>$ the
    series of partial sums is bounded. That is, for some $M>0$, $|s_n| lt.eq M$,
    for all $n in N$.
])
#grouped([
=== Comparison Test
Suppose $0 < a_k lt.eq b_k$ for large $k$.
- $ sum_(k=1)^infinity b_k < infinity ==> sum_(k=1)^infinity a_k < infinity $
- $ sum_(k=1)^infinity a_k = infinity ==> sum_(k=1)^infinity b_k = infinity $
])
#grouped([
=== Integral Test
Suppose that $f: [1, infinity) -> RR$ is non-negative and decreasing on $[1,
    infinity)$. Let $a_k = f(k), k = 1, 2, 3, ...$, then $sum_(k=1)^infinity a_k
    = sum_(k=1)^infinity f(k) "converges" <==> integral_1^infinity f(x) delta x <
    infinity. $
])
#grouped([
=== p-series Test
$ p > 1 <==> sum_(k=1)^infinity 1/(k^p) "converges". $
])
#grouped([
=== Limit Comparison Test
Suppose that $0 lt.eq a_k, 0 lt.eq b_k$ for large $k$ and that
$ L = lim_(n->infinity) (a_k)/(b_k) "exists in" RR^* $
- If $L in (0, infinity)$, then $ sum_(k=1)^infinity a_k "converges" <==>
    sum_(k=1)^infinity b_k "converges" $
- If $L = 0$ and $b_k$'s series converges, then $a_k$'s series converges.
- If $L = infinity$ and $b_k$'s series diverges, then $a_k$'s series diverges.
])
#grouped([
=== Cauchy Condensation
Assume $(a_n)_(n in NN)$ is a decreasing sequence with non-negative terms. The following are equivilent
1. The series $sum_(k=1)^infinity a_n$ converges
2. The series $sum_(k=1)^infinity 2^n a_(2^n)$ converges.
])
#grouped([
=== Absolute and Conditional convergence
- The series $S=sum_(k=1)^infinity a_k$ converges absolutely if $sum_(k=1)^infinity |a_k| < infinity$.
- The series $S$ converges conditionally if $S$ converges, but $sum_(k=1)^infinity |a_k|$ diverges.
#emph([Absolute convergence implies conditional convergence, but not conversely.])
])
#grouped([
=== Root Test, Limit Form
Let $a_k in RR$ and assume $r = lim_(k->infinity) |a_k|^(1/k)$ exists. If,
- r < 1, then the series $sum_(k=1)^infinity a_k$ converges absolutely
- r > 1, then the series diverges.
])
#grouped([
=== Ratio Test, Limit Form
Let $a_k in RR$ and assume $r = lim_(k->infinity) (|a_(k+1)|)/(|a_k|)$ exists.
    If,
- r < 1, then the series $sum_(k=1)^infinity a_k$ converges absolutely
- r > 1, then the series diverges.
])
#grouped([
=== Alternating-series Test
The series $sum_(k=1)^infinity (-1)^k a_k$ is convergent $<==>$
- $(a_k)$ is a decreasing sequence of non-negative numbers, and
- $(a_k) -> 0$ as $k -> infinity$.
])

== Continuity

#grouped([
=== Definitions
Let $f$ be a function and $f: "dom"(f)->RR$ where $"dom"(f) subset.eq RR$ We say
    that $f$ is continuous at $a in "dom"(f)$ if for any sequence $(x_n)$ whose
    terms lie in $"dom"(f)$ and which converges to $a$, we have
    $lim_(n->infinity)f(x_n) = f(a)$.

In short, $f$ is continuous at $a <==>$
For any $epsilon > 0$, there exists some $delta > 0$ such that
$ |x-a| < delta "and" |f(x) - f(a)| < epsilon $

=== Properties
- Polynomials are continuous on $RR$.
- If $f, g: D -> RR$ are continuous on D, then so are
    1. $alpha f$
    2. $f + g$
    3. $f g$
])
#grouped([
=== Extreme and Intermediate Value Theorems
])
#grouped([
=== Limits of Functions
])

== Differentiability on $RR$

#grouped([
=== Definitions
])
#grouped([
=== Differentiability Theorems
])
#grouped([
=== Mean Value Theorem
])
#grouped([
=== Monotone Functions and Inverse Function Theorem
])
#grouped([
=== Taylor's Theorem
])

