== Dijkstra's Algorithm
- Fills in 2 arrays: $d$ and $pi$; $d[i] := "distance from start to node" i$; $d "init'd to" infinity$; $pi[i] := "previous node in optimal path"$; $pi "init'd to"$ `NIL`
- Start with $v_0$; Add $v_0$ to $S$; $d[v_0]=0$
- While $S$ is not empty
    - Get $v$ from S with $min d[v]$; for each fringe vertex from $v$, update $d$ and $pi$ iff the new path is better than the old path; If we update the path for some $v'$, add it to $S$.
- Worst-case time $Theta(|V|^2)$ algorithm.
=== Min-Heap Dijkstra's
- Replace $S$ with a min-heap; get elements with Extract-Min; add elements with Insert.
- Worst-case time $Theta((|E| + |V|)log |V|)$ algorithm.
- Using a fibinacci-heap gives us $Theta(|E| + |V|log |V|)$.

== Coin-Changing Greedy Algorithm
- *Prob:* reach $v$ with coins $c_1, c_2, ..., c_k$, with $c_1=1$ and $c_(i+1) lt c_i$
- Use largest coin $c_i$ such that $c_i lt.eq v$; Add $c_i$ to list; subtract value of $c_i$ from $v$; repeat until $v = 0$; return list
- Doesn't always find optimal solution
== Coin-Changing DP Algorithm
- Fills in $S[0..k]$, $C[1..v]$ and $P[1..v]$ arrays; $S[i] :=$ the number of coin $i$; $C[v_i] :=$ the number of coins in the optimal solution for $v_i$; $P[v_i]$ stores the coin used for $C[v_i]$.
- (1) Exploits the fact that for the optimal coin, $c_i$, $C(v) = 1 + C(v - c_i)$
- We fill in $C$ and $P$ from $0$ to $v$; For each $v_i$, try every $c_i$, fill with the largest coin that satisfies (1).
- Go backwards in $C$ and $P$, finding the minimum $c_i$ each time (skipping back $c_i$ entries each time), to read off into $S$

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

== Edit-Distance DP Algorithm
- *Prob:* Find the number of edits (insertions, deletions, substitutions) needed to turn string $s$ into $t$
- Fill in the $d$ table; $d[m, n] := $ edit distance from $s_m = s[1..m]$ to $t_n = t[1..n]$; Exploits the relation $d(m, 0) = m$, $d(0, n) = n$, if $s_m = t_n$, then $d(m, n) = d(m-1, n-1)$, else
$ d(m, n) = 1 + min{d(m-1, n-1), #linebreak()
            d(m-1, n), d(m, n-1)} $
- Works by filling in the table from left to right, top to bottom; Time is $Theta(m n)$ in all cases.

== Finite State Machines (FSMs)
- Come in the form $M = (Q, Sigma, q_0, F, delta)$; accepts or rejects strings.
== Probabilistic FSMs
- Come in the form of an FSM, $M$ with a probability measure $p_(q, a, q')$, with $q, q' in Q$ and $a in Sigma$; altogether gives a probability of accepting or rejecting a string.
== Hidden Markov Models (HMMs)
- Like a probabilistic FSM, but instead of testing strings, we're generating them; Each state we transition to outputting a character (the label for the state); Note prob is just $p_(q,q')$ now.
- Also need $b_(q,x)$ for the prob of a state emitting a symbol $x$, and $pi_q$ for the prob of starting at $q$
== Viterbi DP Algorithm
- *Prob:* Given an HMM and a string, $s$ of size $n$, find the path that most likely generated $s$
- Fill in the tables `mlp`, `prev`; $"mlp"[i, q] :=$ the cost of the most likely path to generate $s_i = s[1...i]$, ending in $q in Q$; `prev` is the state which optimizes $"mlp"[i, q]$; Exploits relation $"mlp"[1, q] = pi_q dot b_(q,s_1)$ and $"mlp"[i>1, q] = min_(q^* in Q){"mlp"[i-1, q^*] dot p_(q^*, q) dot b_(q,s_i)}$
- Fill in the tables from left to right $i=1$ to $n$; filling in each $q$ by checking every $q^*$; read off the most likely from `mlp` and `prev`.
== Context-Free Grammars (CFGs)

== Chompsky Normal Form
== CYK Parsing
== LL(1)
== Euler Tours (ET) and Hamiltonian Cycles (HC)
== Decision Problems
== NP-Completeness
== SAT
== Independent Sets (IS)
== 3-SAT to IS Reduction
== Vertex Cover Approximation Algorithm
== Greedy 3-SAT
== Greedy IS
== DPLL and Recursive-Backtracking (SAT)
== Register Machines
== Halting Problem
== Russell's Paradox
== Diophantine Equation Solvability
== Post's Word Problem
