#let hline = [
    #v(-.2cm);
    #line(start: (-1%, 0%), length: 100%);
    #v(-.2cm);
]

== Dijkstra's Algorithm
- Fills in 2 arrays: $d$ and $pi$; $d[i] := "distance from start to node" i$; $d "init'd to" infinity$; $pi[i] := "previous node in optimal path"$; $pi "init'd to"$ `NIL`
- Start with $v_0$; Add $v_0$ to $H$ (Min-heap); $d[v_0]=0$
- While $H$ is not empty
    - Get $v$ with Extract-Min; for each fringe vertex from $v$, update $d$ and $pi$ iff the new path is better than the old path; If we update the path for some $v'$, Insert into $H$.
- Worst-case time $Theta((|E| + |V|)log |V|)$ algorithm.
- Using a fibinacci-heap gives us $Theta(|E| + |V|log |V|)$, using a list with a loop for the min gives $Theta(|V|^2)$.
#hline
== Coin-Changing Greedy Algorithm
- *Prob:* reach $v$ with coins $c_1, c_2, ..., c_k$, with $c_1=1$ and $c_(i+1) lt c_i$
- Use largest coin $c_i$ such that $c_i lt.eq v$; Add $c_i$ to list; subtract value of $c_i$ from $v$; repeat until $v = 0$; return list
- Doesn't always find optimal solution
== Coin-Changing DP Algorithm
- Fills in $S[0..k]$, $C[1..v]$ and $P[1..v]$ arrays; $S[i] :=$ the number of coin $i$; $C[v_i] :=$ the number of coins in the optimal solution for $v_i$; $P[v_i]$ stores the coin used for $C[v_i]$.
- (1) Exploits the fact that for the optimal coin, $c_i$, $C(v) = 1 + C(v - c_i)$
- We fill in $C$ and $P$ from $0$ to $v$; For each $v_i$, try every $c_i$, fill with the largest coin that satisfies (1).
- Go backwards in $C$ and $P$, finding the minimum $c_i$ each time (skipping back $c_i$ entries each time), to read off into $S$
#hline
== Seam Carving DP Algorithm
- *Prob:* Given $m times n$ image, wanting to fit into $m' times n'$; A vertical seam is $s=j_1,j_2,...,j_m in [n]$ such that $|j_i-j_(i-1)| lt.eq 1$ and $2 < j < n-1$;  similar for horizontal seams; Each pixel has an energy, sum all pixels in the seam to get energy for the seam; Note that pixels may have 3 color channels, so 3 $d/(d x)$/$d/(d y)$'s to take
- We typically describe energy with $d/(d x)$ and $d/(d y)$, using Sobel operators:
$ mat(-1, 0, 1; -2, 0, 2; -1, 0, 1) #v(1cm) mat(-1, 2, -1; 0, 0, 0; 1, 2, 1) $
- For DP, we fill in the `opt` table, and exploit (for vert seam, same idea for horiz seam):
$ "opt"(i, j) = e_I (i, j) #linebreak() + cases(
    0 "if i = 1",
    min{"opt"(i-1, j-1), #linebreak()
    #v(.5cm) "opt"(i-1, j), #linebreak()
    #v(.5cm) "opt"(i-1, j+1)} "if i > 1"
) $
- Fill in table from top to bottom; read off from bottom to top to get seams
#hline
== Edit-Distance DP Algorithm
- *Prob:* Find the number of edits (insertions, deletions, substitutions) needed to turn string $s$ into $t$
- Fill in the $d$ table; $d[m, n] := $ edit distance from $s_m = s[1..m]$ to $t_n = t[1..n]$; Exploits the relation $d(m, 0) = m$, $d(0, n) = n$, if $s_m = t_n$, then $d(m, n) = d(m-1, n-1)$, else
$ d(m, n) = 1 + min{d(m-1, n-1), #linebreak()
            d(m-1, n), d(m, n-1)} $
- Works by filling in the table from left to right, top to bottom; Time is $Theta(m n)$ in all cases.
#hline
== Finite State Machines (FSMs)
Come in the form $M = (Q, Sigma, q_0, F, delta)$; accepts or rejects strings.
== Probabilistic FSMs
Come in the form of an FSM, $M$ with a probability measure $p_(q, a, q')$, with $q, q' in Q$ and $a in Sigma$; altogether gives a probability of accepting or rejecting a string.
== Hidden Markov Models (HMMs)
- Like a probabilistic FSM, but instead of testing strings, we're generating them; Each state we transition to outputting a character, $x$, at some probability $b_(q,x)$; Note prob is just $p_(q,q')$ now.
- Also adds $pi_q$ for the prob of starting at $q$
== Viterbi DP Algorithm
- *Prob:* Given an HMM and a string, $s$ of size $n$, find the path that most likely generated $s$
- Fill in the tables `mlp`, `prev`; $"mlp"[i, q] :=$ the cost of the most likely path to generate $s_i = s[1...i]$, ending in $q in Q$; `prev` is the state which optimizes $"mlp"[i, q]$; Exploits relation $"mlp"[1, q] = pi_q dot b_(q,s_1)$ and $"mlp"[i>1, q] = max_(q^* in Q){"mlp"[i-1, q^*] dot p_(q^*, q) dot b_(q,s_i)}$
- Fill in the tables from left to right $i=1$ to $n$; filling in each $q$ by checking every $q^*$; read off the most likely from `mlp` and `prev`.
#hline
== Context-Free Grammars (CFGs)
A set of parsing rules for building abstract syntax trees; Consists of $Sigma$ terminals, $N$ non-terminals (disjoint from $Sigma$), Start symbol $S in N$, and Productions $X -> alpha$ for some $X in N$ and $alpha in (Sigma union N)^*$

== Chompsky Normal Form (CNF)
- A grammar is in CNF if all rules are of the form $X -> Y Z$ for $X, Y, Z in N$ or $X -> alpha$ for some $X in N$ and $alpha in Sigma$.
- Split rules with multiple symbols up like $X -> X_1X_2...X_n$ goes to $X -> X_1X_2'$, $X_2' -> X_2X_3'$, ...; Find all productions generating $epsilon$; Remove them, but add back rules in form $X -> Y alpha$ or $X -> alpha Y$ with $X -> alpha$ (where $Y$ is the nullable production); Remove unit productions $X->Y$, $Y->alpha$ gets replaced with $X->alpha$. For each terminal, $alpha$, add a non-terminal $Z_alpha -> alpha$, and rewrite rules to use $Z_alpha$ instead.
== CYK Parsing (DP for CFGs)
- *Prob:* Parse string into CFG syntax tree
- We fill in a CYK parse table, `cyk`; $"cyk"[i,j] :=$ possible analyses of the substring $s_(i,j) = s[i..j]$ ($i < j$); we fill from smallest substrings to larger substrings (starting with the diagnal for instance)
- Time is always $Theta(m n^3)$, where $m$ is grammar size and $n$ is strings size.
== LL(1)
- LL(1) is the class of languages that can be parsed completely with the previous production and a single new token at each step; Very fast parsing runs in only $Theta(n)$; Not always possible and less flexible than arbitrary CFGs.
- We're given a parse-table, like
#align(center)[
#table(columns: 4,
[], [(], [)], [\$],
[S], [$S -> T S$], [$S -> epsilon$], [$S -> epsilon$],
[T], [$T -> (S)$], [], [])
]
- Example parse: ()\$
#align(center)[
#table(columns: 3,
[Action], [Input], [Stack],
[], [], [S],
[Lookup \(, S], [\(\)\$], [TS],
[Lookup \(, T], [\(\)\$], [(S)S],
[Match \(], [\)\$], [S\)S],
[Lookup \), S], [\)\$], [\)S],
[Match \)], [\$], [S],
[Lookup \$, S], [\$], [])
]
#hline
== Decision Problems
- A problem that can be represented as a set of potential solutions where $Q(J) = 1$ if there is a solution in $S$ that for the instance $J$ and $Q(J) = 0$ otherwise is a decision problem.
- An individual solution in $S$ is called a certificate, and decision problems with a polynomial time certificate verification algorithm are in NP.
== NP-Completeness
- A problem, Q, is NP-complete if it's in NP and can be reduced ($R lt.eq_P Q$) to every other problem, $R$, in NP, in P time. Notably, reducing to a single NP-complete problem (3-SAT, HC, IS, etc.) is enough to satisfy this.
#hline
== Euler Tours (ET) and Hamiltonian Cycles (HC)
- An ET of a graph is a path that traverses every edge exactly once, an HC of a graph is a path that traverses every node exactly once.
- ET can be accelerated with maffs (graph with only even degree vertices has an Euler Tour; yielding $Theta(m + n)$ algorithm), HC is *NP-complete*.
== SAT (NP-Complete)
$Phi = C_1 and C_2 and ... and C_n$ over variables $X={x_1, ..., x_n}$, with $C_i = or.big_(x_i in X_i) x_i$. Is there a satisfying assignment for $Phi$? N-SAT restricts clauses to a size $N$. $2$-SAT is solvable in P time, but $N>2$ N-SAT is NP-complete.
== Ind. Sets (IS) (NP-Complete)
- Given a graph and a number $k in NN$, is there an Independent Set of size $k$ for the graph. An Independent Set is a set of nodes such that no two nodes in the set have an edge connecting them.
- In other words, an edge represents that two nodes are mutually exclusive.
== Vertex Covers (NP-Complete)
- Given a graph and a number $k$, is there a vertex cover of size $lt.eq k$? A vertex cover is a set of nodes that connect to every edge (i.e. for every edge, one side of the edge is in the set).
== 3-SAT to IS Reduction
- For every clause, add the 3 literals (variables) of the clause as nodes, connecting them in a triangle; Connect every pair of nodes representing negated assignments ($x_i$ and $not x_i$); Then IS of size $m <==> $ some satisfying assignment for $Phi$
#hline
== Vertex Cover Approximation Algorithm
- Start with edge $e = (u, v)$; Add $u, v$ to the $C$; Remove edges connected to $u$ or $v$; Repeat until no edges left; Return $C$.
- This is a 2-approximation, returning a set at most double the size of the optimal set.
== Greedy 3-SAT
- There exists a $8/7$-approximation for MAX 3-SAT in P time.
== Greedy IS
- There exists no constant approximation factor $alpha$ in polynomial time for IS (assuming P $eq.not "NP"$)
#hline
== Register Machines (RMs)
- Fixed set of registers (A, B, ...) capable of storing some natural number, simple operations ($A+$, $A-$, $A?$ branching into $0$/$+$/$-$, starting with `start`, ending with `end`); RMs are Turing Complete
== Halting Problem
- Given a Register Machine, $m$, there exists no algorithm to check if $m$ halts; Many halting problem instances come from mathematical questions involving existence.
== Diophantine Equation Solvability
- The integer solvability of diophantine equations (i.e. Given a polynomial $P(x_1, x_2, ...)$ and an integer $n$, is there an integer assignment of $x$'s to satisfy $P(x_1, x_2, ...) = n$?) becomes an unbounded search problem, thus is subject to the halting problem.
== Post's Word Problem
- Given two sets of strings $S, T$ check if there exists a string that can be composed of concatenations of elements from $S$ and from $T$.

