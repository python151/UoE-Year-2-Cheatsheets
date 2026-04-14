#import "utils.typ": grouped

#let grouped_internal(content, color: black) = grouped(content, color: color)
#let grouped(content, color: black) = grouped_internal(content, color: color)
// Change defaults for this file in this function ^^^

= Analysis

== The Real Numbers

#grouped([
=== The Algebraic Structure of $RR$
])
#grouped([
=== The Absolute Value
])
#grouped([
=== The Completeness Axiom
])
#grouped([
=== Infinity
])
#grouped([
=== Countability
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
])
#grouped([
=== Series with non-negative Terms
])
#grouped([
=== Cauchy Condensation
])
#grouped([
=== Absolute convergence
])
#grouped([
=== Alternating-series
])

== Continuity

#grouped([
=== Definitions
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

