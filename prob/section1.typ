== Foundations and the Inclusion Exclusion Principle

The *sample space* or *universal set* has all the possible outcomes in the
universe we're working with, $Omega$. An *event* is a subset of the universal set. $A subset Omega$, and an event $x
in Omega$ has occured iff $x in A$. The *complement* of an event is the event $A^C = Omega \\ A$.

Denote $AA$ as the set of all events.

=== Probability Measures

A Probability Measure is a map $PP: AA -> RR$ such that
- $forall A in AA, PP(A) gt.eq 0$
- $PP(Omega) = 1$
- for countably many disjoint events $A_i$, (events such that $A_i inter A_j =
emptyset$ when $i != j$), it holds that $PP(union.big_i A_i) = Sigma PP(A_i)$

=== Discrete Uniform Distribution

If for all $w in Omega$, $PP({w}) = 1/(\# Omega)$, then we call this a discrete
uniform distribution, and $PP(A) = (\# A)/(\# Omega)$

=== Combinatorics Basics

There are $n!$ ways to *order $n$ objects*. $n^k$ ways to *pull $k$ objects with
replacement*, and $n!/(n-k)!$ ways to pull $k$ objects without replacement (but
in order). There are $mat(n; k) = n!/((k!)(n-k)!)$ if we ignore order (*n choose
k*).

=== Inclusion-Exclusion Principle

$ PP(A union B) = PP(A) + PP(B) - PP(A inter B) $

$ PP(A union B union C) = PP(A) + PP(B) + PP(C) #linebreak() - PP(A inter B) -
PP(A inter C) - PP(B inter C) #linebreak() + PP(A inter B inter C) $

Generally,

$ PP(union.big_(i=1)^n A_i) = sum_(k=1)^n (-1)^(k+1) sum_(1 lt.eq i_1 < ... <
i_k lt.eq n) PP(inter.big_(k=1)^k A_(i j)) $
