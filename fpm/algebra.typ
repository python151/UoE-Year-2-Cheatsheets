#import "utils.typ": grouped

#let grouped_internal(content, color: black) = grouped(content, color: color)
#let grouped(content, color: blue) = grouped_internal(content, color: color)
// Change defaults for this file in this function ^^^

= Algebra

== Definitions

#grouped([
=== General Group Definition

- G1. (Closure) $*$ is an operation, so $g*h in G$ for all $g, h in G$.
- G2. (Associativity) $g * (h * k) = (g * h) * k$ for all $g, h, k in G$.
- G3. (Identity) There exists an identity element $e in G$ such that $e * g = g
* e = g$ for all $g in G$.
- G4. (Inverses) For every $g in G$, there exists $g^(-1) in G$ such that $g *
g^(-1) = g^(-1) * g = e$.

If $G$ is finite, we say the order of $G$ is $|G|$, else we say the order of $G$ is infinite.
])

#grouped([
=== Subgroups

A subset $H$ of $G$ is a subgroup $<==>$

- S1. (Non-empty) $H$ is non-empty.
- S2. (Closure) $h, k in H => h k in H$
- S3. (Inverses) $h in H => h^(-1) in H$
- Alternatively, (S2) and (S3) $<==> h, k in H => h k^(-1) in
H$.
])

#grouped([
=== Cyclic and Abelian Groups

- A generating element is typically denoted by $g$ or $lr(angle.l g angle.r)$ if it generates the group $G$. A generating element is an element such that if $h in G$, then $h = g^n$ for some n. If an element of $G$ generates all of $G$ then $G$ is cyclic. In fact, every element other than the identity in $G$ is a generator.
- Abelian groups are groups with a commutative operation within the group. Note that some operations can be, in-general, non-commutative, but act commutative within a specific group, for instance, all groups are abelian in the trivial case ($G = {e}$)
])

== Misc properties and elements

#grouped([
- The identity element is typically denoted as $e$ or $epsilon$
- If $|G| = p$ for some prime $p$, then $G$ is cyclic (Theorem 2.4.6).
- If a group is cyclic, then it is abelian.
- If $|G| < 6$, then it is abelian (Corollary 2.4.7).

=== Orders of elements

- $o(g)$ for $g in G$ is called the "order of the element g" and is the smallest number which $g^n = e$. If $g^n eq.not e$ for all $n lt.eq |G|$, then we say "the element g is of infinite order".
- In a finite group, all elements have finite order.
- In a finite group, $forall g in G. o(g) | |G|$
- In a finite group, if some $p | |G|$, then some $g in G$ exists s.t. $o(g) =
    p$ (Cauchy's theorem)
- $o(g,h) = "lcm"(o(g), o(h))$
])

== Common Groups and Their Properties

#grouped([
=== $text("GL")(n, RR)$ and its subgroups

$text("GL")(n, RR)$ is the General Linear Group of dimension n in $RR$. Generally,
this is used to work with $RR^n$. Every invertable matrix of dimension $n$ with
real coefficients is a member of $text("GL")(n, RR)$.

==== Useful Properties

- if $det(A) eq.not 0$, then some $A^(-1)$ exists such that $AA^(-1) = I$.
- $det(A)det(B) = det(A B)$
- $(A B)^(-1) = B^(-1)A^(-1)$
- $(A B)^(T) = B^(T)A^(T)$
])

#grouped([
=== $ZZ\/n ZZ$ and $ZZ\/n ZZ^times$

- This is the additive group of order $n$ under addition and multiplciation respectively, with the elements ${0, 1, ..., n}$
- For the multiplicitive case it is important that the order ($n$) is prime, otherwise it may fail to be closed.
- This group is isomorphic to all symmetry and permutative groups of the same order
- Euler's theorem:
$ a^(phi(n)) eq.triple 1 mod n text("and to make FLT,") phi(p) = p-1 $
])

#grouped([
=== Symmetries

$D^n$ represents the Dihedral group (symmetries of a regular n-gon). In effect, this is $e$ for the identity, $h$
    for a reflection, and $g$ for a $360/n deg$ rotation, and each of their combinations. With $h^2 = e$ and
    $g^n = e$. For instance, the group for $n=3$ is ${e, g, g dot g, h, g dot h, h dot g}$
])

#grouped([
=== Permutations

$S_n$ represents the permutation group of size $n$. Consider $s in S_n$, a mapping
    like $s: {0, 1, ..., n-1} -> {0, 1, ..., n-1}$. These mappings are often split
    into sets of loops, for instance, $(1 2 3 4) (5 7)$ represents $1 -> 2 ->
    3 -> 4 -> 1$ and $5 -> 7 -> 5$, with $6 -> 6$ being implied.
])

== Cyclic groups and subgroups

#grouped([
=== Useful properties

Suppose that $H lt.eq G$ and $H$ is finite, then

1. $|g H| = |H|$ for all $g in G$
2. For a fixed $g in G$, the number of $g_1 in G$ s.t. $g H = g_1 H$ is equal to $|H|$
])

#grouped([
=== Lagranges Theorem

- If $H lt.eq G$, then $|H|$ divides $|G|$
- So if $g in G$, then $o(g) divides |G|$
- and for all $g in G$, we have that $g^(|G|) = e$.
])
== Group Morphisms
#grouped([
Assume $G$, $H$, and $K$ are groups with operations $*$, $dot$, and $times.circle$ respectively.

$ker phi := "Pre-image of" epsilon "for" phi$

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
])

#grouped([
=== Properties

- Assume $H$, $K$ are subgroups of $G$ with $H sect K = {e}$, and $H K = {h k | h in H, k in K}$ If $h k = k h$ for all $h in H$ and $k in K$ (using the operation in $G$), then $H times K$ is a subgroup in G, and $H times K$ is isomorphic to $H K$.
- Assume $H$, $K$ are *finite* subgroups of $G$ with $H sect K = {e}$, then $|H K| = |H| times |K|$
])

== Group Actions

#grouped([
=== Basic Definitions

==== Group Actions

- A (left) action of G on X is $G times X -> X$, written $(g, x) arrow.r.bar g
dot x$ such that
$ g_1 dot (g_2 dot x) = (g_1 dot g_2) dot x text("and") e dot x = x $
Take X = G,
- A right action is defined $g dot h = h g^(-1)$ for all $g in G$ and $h in X$.
- A conjugate action defined $g dot h = g h g^(-1)$ for all $g in G$ and $h in X$.

==== Orbits and Stabilizers

Let $G$ act on $X$, and let $x in X$. The stabilizer of $x$ is defined to be
$ text("Stab")_G (x) = {g in G | g dot x = x} $
Let $G$ act on $X$, and let $x in X$. The orbit of $x$ is defined to be
$ text("Orb")_G (x) = {g dot x | g in G} $
])

#grouped([
=== Properties

==== Orbit-Stabilizer theorem

Suppose $G$ is a finite group acting on the set $X$, and let $x in X$. Then,
$ |text("Orb")_G (x)| times |text("Stab")_G (x)| = |G| $

==== Misc

- Let $G$ act on $X$,
$ x tilde y <=> y = g dot x text("for some") g in G $
defines an equivilence relation on G. The equivilence classes are the orbits of $G$.
- The Stabilizer of $x$ is a subgroup of $G$.
])

== Counting and Cayley

#grouped()[
=== Polya Counting

(*Definition of Fixed set*) $"Fix"(g) = {x in X | g dot x = x}$

(*Polya Counting*) _the number of orbits in _$X = 1/(|G|) sum_(g in G) |"Fix"(g)|$
]


#grouped()[
=== Conjugacy and the Class Equation
(*Conjugate Actions*) The action of a group on itself is called the conjugate
    action.

(*Conjugacy Class*) The orbits of the conjugacy action are the conjugacy classes.

(*Centralizer*) $C(g) := {h in G | g h = h g}$

(*Centre of Group*)  The center of the group $G$ is $C(G) := {g in G | g h = h g
"for all" h in G}$. If $g in C(G)$, $g$ is "central".

(*Corollaries*)
- For all $g in G$ the centralizer $C(g)$ is a subgroup of $G$
- $C(G)$ is a subgroup of $G$.
- If $G$ is finite and $g in G$, then $("the number of conjugates of G") times
    |C(g)| = |G|$
- ${e}$ is always a conjugacy class of $G$.
- ${g}$ is a conjugacy class $<==> g in C(G)$. Hence $C(G)$ is the union of all
    one-element conjugacy classes.

(*Class equation*) Say $G$ is a finite group with conjugacy classes $"Conj"_i$, $i
= 1, ..., k$.
1. $|"Conj"_i|$ divides $|G|$.
2. $|G| = sum_(i = 1)^k |"Conj"_i|$

(*Prime order fuckery*) If $|G| = p^k$, where $p$ is prime, then $|G(G)| gt.eq
    p$ and every group $G$ of order $p^2$ is abelian.
]

#grouped()[
=== Cayley's Theorem
$ "bij"(X) := {"bijections" X -> X} $

- If $G$ acts on the set $X$, then for all $g in G$, the map $f_g : X -> X$ defined as $x -> g dot x$ is a bijection.

Let $G$ be a group and let $X$ be a set. Then
1. An action of $G$ on $X$ is equivilent to a group homomorphism $phi : G -> "bij"(X)$
2. The action is faithful $<==> phi "is injective"$.
3. If the action is faithful, then $phi$ gives an isomorphism of $G$ with $im phi lt.eq "bij" X$

(*Cayley's Thoerem*) Every finite group is isomorphic to a subgroup of a symmetric group.
]



