#set page(margin: (x: .5cm, y: .5cm),
          columns: 3,
          width: 297mm, height: 210mm)

= Algebra

== Definitions

=== General Group Definition

- G1. (Closure) $*$ is an operation, so $g*h in G$ for all $g, h in G$.
- G2. (Associativity) $g * (h * k) = (g * h) * k$ for all $g, h, k in G$.
- G3. (Identity) There exists an identity element $e in G$ such that $e * g = g
* e = g$ for all $g in G$.
- G4. (Inverses) For every $g in G$, there exists $g^(-1) in G$ such that $g *
g^(-1) = g^(-1) * g = e$.

If $G$ is finite, we say the order of $G$ is $|G|$, else we say the order of $G$ is infinite.

=== Subgroups

A subset $H$ of $G$ is a subgroup $<==>$

- S1. (Non-empty) $H$ is non-empty.
- S2. (Closure) $h, k in H => h k in H$
- S3. (Inverses) $h in H => h^(-1) in H$
- Alternatively, (S2) and (S3) $<==> h, k in H => h k^(-1) in
H$.

=== Cyclic and Abelian Groups

- A generating element is typically denoted by $g$ or $lr(angle.l g angle.r)$ if it generates the group $G$. A generating element is an element such that if $h in G$, then $h = g^n$ for some n. If an element of $G$ generates all of $G$ then $G$ is cyclic. In fact, every element other than the identity in $G$ is a generator.
- Abelian groups are groups with a commutative operation within the group. Note that some operations can be, in-general, non-commutative, but act commutative within a specific group, for instance, all groups are abelian in the trivial case ($G = {e}$)


=== Misc properties and elements

- The identity element is typically denoted as $e$ or $epsilon$
- If $|G| = p$ for some prime $p$, then $G$ is cyclic (Theorem 2.4.6).
- If a group is cyclic, then it is abelian.
- If $|G| < 6$, then it is abelian (Corollary 2.4.7).

==== Orders of elements

- $o(g)$ for $g in G$ is called the "order of the element g" and is the smallest number which $g^n = e$. If $g^n eq.not e$ for all $n lt.eq |G|$, then we say "the element g is of infinite order".
- In a finite group, all elements have finite order.
- In a finite group $g^k = -1$ for some $k$, namely $o(g)-1$

== Common Groups and Their Properties

=== $text("GL")(n, RR)$ and its subgroups

$text("GL")(n, RR)$ is the General Linear Group of dimension n in $RR$. Generally,
this is used to work with $RR^n$. Every invertable matrix of dimension $n$ with
real coefficients is a member of $text("GL")(n, RR)$.

==== Useful Properties

- if $det(A) eq.not 0$, then some $A^(-1)$ exists such that $AA^(-1) = I$.
- $det(A)det(B) = det(A B)$
- $(A B)^(-1) = B^(-1)A^(-1)$
- $(A B)^(T) = B^(T)A^(T)$

=== $ZZ\/n ZZ$ and $ZZ\/n ZZ^times$

- This is the additive group of order $n$ under addition and multiplciation respectively, with the elements ${0, 1, ..., n}$
- For the multiplicitive case it is important that the order ($n$) is prime, otherwise it may fail to be closed.
- This group is isomorphic to all symmetry and permutative groups of the same order
- Euler's theorem:
$ a^(phi(n)) eq.triple 1 mod n text("and to make FLT,") phi(p) = p-1 $

=== Symmetries

=== Permutations

== Cyclic groups and subgroups

=== Useful properties

Suppose that $H lt.eq G$ and $H$ is finite, then

1. $|g H| = |H|$ for all $g in G$
2. For a fixed $g in G$, the number of $g_1 in G$ s.t. $g H = g_1 H$ is equal to $|H|$

=== Lagranges Theorem

- If $H lt.eq G$, then $|H|$ divides $|G|$
- So if $g in G$, then $o(g) divides |G|$
- and for all $g in G$, we have that $g^(|G|) = e$.

== Group Morphisms

Assume $G$, $H$, and $K$ are groups with operations $*$, $dot$, and $times.circle$ respectively.

=== Group Homomorphisms

A function $phi: G -> H$ is a group homomorphism iff
$ phi(x*y) = phi(x) dot phi(y) $

=== Group Isomorphisms and Automorphisms

A group homomorphism $phi$ that is also a bijection is an isomorphism. We write
$G tilde.equiv H$.

Note that $phi^(-1): H -> G$ then proves an isomorphism from
$H$ to $G$, and since we've already shown its existence, an isomorphism one way
proves its existence both ways.

An isomorphism $G -> G$ is an automorphism of $G$.

=== Properties

- Assume $H$, $K$ are subgroups of $G$ with $H sect K = {e}$, and $H K = {h k | h in H, k in K}$ If $h k = k h$ for all $h in H$ and $k in K$ (using the operation in $G$), then $H times K$ is a subgroup in G, and $H times K$ is isomorphic to $H K$.
- Assume $H$, $K$ are *finite* subgroups of $G$ with $H sect K = {e}$, then $|H K| = |H| times |K|$

== Group Actions

== Counting and Cayley
