#import "utils.typ": grouped

= Complexity Theory

== $O$, $Theta$, $Omega$ Definitions

#grouped([
=== Little-o and $omega$

- We say $f = o (g)$ if for all $c>0$ there exists some $N$ such that $forall n gt.eq N, f(n) < c g(n)$
    - 'f is always eventually bounded above by some constant scaling of g'
- We say $f = omega (g)$ if for all $C>0$ there exists some $N$ such that $forall n gt.eq N, f(n) > C g(n)$
    - 'f always eventually overtakes any given constant scaling of g'
])

#grouped([
=== Big-O, $Theta$, and $Omega$
- We say $f = O(g)$ if there exists $C>0$, such that there exists some $N$ such that $forall n gt.eq N, f(n) < c g(n)$
    - This is the same as little-o, but with $forall -> exists$.
- We say $f = Omega(g)$ if there exists $C>0$, such that there exists some $N$ such that $forall n gt.eq N, f(n) > C g(n)$
    - This is the same as $omega$, but with $forall -> exists$.
- We say $f = Theta(g)$ if $f in O(g)$ and $f in Omega(g)$. Alternatively if, for some $c_1, c_2 > 0$ there exists an $N$ such that $forall n gt.eq N, c_1 g(n) lt.eq f(n) lt.eq c_2 g(n)$
    - In essence, both form a tight bound ('both are equivilent in their assymptotic behavior').
    - Note that $f = Theta(g) <==> g = Theta(f)$.

])


== The Master Theorem

#grouped([
=== Master Theorem Statement

Say we have a procedure which does the following:
0. Accepts input $x$ of size $n$
1. If $n < k$, the procedure returns directly without recursion
2. Otherwise
    3. Create $a$ subproblems of $x$, each of size $n/b$
    4. Call procedure $p$ recursively on each subproblem
    5. Combine the results and return

A general form for a tight bound would then be
$ T(n) = a T(n/b) + f(n) $
Where $f(n)$ is the combined time for steps 3. and 5. (that is to create
    subproblems and combine their results).
])

#grouped([
=== Cases of the Master Theorem
#lorem(60)
])

== P and NP

#grouped([
=== The P and NP Complexity Classes
- P stands for polynomial time, that is it runs in $O(n^c)$ for some finite $c$.
- NP stands for Non-deterministic Polynomial time. In short, given a decision
oracle (that is, an oracle that can tell us which branch to take), the problem
is Polynomial time.
- This is equivilent to saying the problem can be verified in polynomial time.
])

#grouped([
=== NP-Completeness
- There exists a stronger notion called NP-completeness, which states a problem
is exactly as hard as NP and no more.
- The problem must be in NP
- Additionally, the problem must be reducable to every other NP-complete problem in P time.
])

