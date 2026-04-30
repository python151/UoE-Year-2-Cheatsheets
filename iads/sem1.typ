#let hline = [
    #v(-.2cm);
    #line(start: (-1%, 0%), length: 100%);
    #v(-.2cm);
]

== Little-o and $omega$

$ f = o(g) <==> forall C > 0 exists N > 0 $
$ forall n gt.eq N f(n) lt.eq C g(n) $
$ f = omega(g) <==> forall C > 0 exists N > 0 $
$ n gt.eq N f(n) gt.eq C g(n) $

== Big-O, $Omega$, and $Theta$

$ f = O(g) <==> exists C > 0 exists N > 0 $
$ forall n gt.eq N f(n) lt.eq C g(n) $
$ f = Omega(g) <==> exists C > 0 exists N > 0 $
$ forall n gt.eq N f(n) gt.eq C g(n) $
$ f = Theta(g) <=> f = O(g) and f = Omega(g) $

== Master Theorem

$ T(n) = a T(n / b) + f(n)$, $"where" a gt.eq 1, b > 1 $

Let $epsilon = log_b a$ and $f(n) = O(n^c)$ for some $c$,
$ T(n) = cases(
    Theta(n^epsilon) "if" c < epsilon,
    Theta(n^epsilon log n) "if" c = epsilon,
    Theta(f(n)) "if" c > epsilon
) $

#hline

== ExpMod

```python
def ExpMod(a, n, m):
    if n == 0: return 1
    else:
        d = ExpMod(a, n // 2, m)
        if n % 2 == 0:
            return (d*d) % m
        return (d*d*a) % m
```

#hline

== Merge Sort

Procedure:
- If size $lt.eq 1$: return A
- Split your array in half into $A_1$ and $A_2$
- MergeSort($A_1$) and MergeSort($A_2$)
- return Merge($A_1$ and $A_2$)

Can be done in-place by keeping the original arrays and using simple index
bounds, but still requires $Theta(n)$ auxillary memory. $Theta(n log n)$ time in all cases.

== Merge

Goes through elements in each array and merges them. Generally takes
$Theta(n+m)$ in the best and worse case.

#hline

== Extensible arrays
- Like fixed-size arrays, but if we're at max capacity we grow by a factor of $r$ (e.g. $r=2$ means doubling)
- Worse case for cons, append is $Theta(n)$, amortized to $O(1)$
- All other operations still at $O(1)$
== Stacks and queues
- Restricting lists to only push and pop (append and getting / removing the last item) is a stack
- Restricting lists to only dequeue and pop (append and getting / removing the first item) is a queue

#hline

== Sorted arrays (sets and dictionaries)
- Using sorted arrays allows us to use binary search for lookups
- Gives us $Theta(log n)$ contains / get operations
- Set / add operations at $Theta(n)$
== Hash tables (sets and dictionaries)
- Using hash tables allows us to reduce our lookup to that of the hash
- Implementation dependent, but often faster, albiet with high constants
== Balanced trees (sets and dictionaries)
Balanced Trees (like R-B trees) give us $Theta(log n)$ for all operations.

#hline

== Bucket-list Hashing
- Use a standard hashing function into a fixed-length array
- When we have a collision, add to list
- Search through list for operations, gives us $Theta(n)$ operations in the worst case.
== Probe Hashing
- Store values in the table instead of a list
- Have a hash function like $H(n, i)$ that hashes and if we have a collision allows us to increment $i$. Still gives us $Theta(n)$ worst-case, but usually better average and best-cases.
== Perfect Hashes
- Have a hash function that's a perfect bijection (1-to-1 mapping)
- Only possible in general for fixed-sized spaces, but $Theta(1)$ for all operations in the worst case.

#hline

== Ordered-binary trees (or Binary Search Tree / BST)
Binary tree where the left side is always less than the key in the root, and right side always greater than key in the root
== Red-black trees
Rules:
- Root node must be black
- Red nodes cannot have red children
- Every path from a node to its decendents must have the same number of black nodes
- All leaf nodes are black
Fixing rules:
- Red uncle rule: if a red node has a red uncle, both parent and uncle are recolored black, and the grandparent red, continue recursively
- If the root is colored red, recolor to black.

#hline
== Max Heap Definition
- A complete binary tree
- The value of the root node must be the largest among all its decendent nodes
- The left and right nodes must have the same property
== Max Heap Array Representation
If a node is at index $i$, then
- $"Left"(i) = 2 i + 1$
- $"Right"(i) = 2 i + 2$
- $"Parent"(i) = floor.l (i-1)/2 floor.r$
== Max-Heap-Insert
Add at the end of heap, sift-up to fix (swap with parent until parent is greater), is $Theta(log n)$ in all cases
== Extract-Max
Gets root node value; swaps first and last elements; removes last; sift-up to fix.
== Build-Max-Heap
- Turns an array into a valid max-heap
- Assume the largest is the given index, if a child is less than the root, swap nodes and recursively call on that subtree.
- Apply this to all nodes in reverse order (so leaves first), gives $O(n)$ due to a geometric series from the guaruntees of already being fixed (since we start with the leaves)
== HeapSort
- Use Build-Max-Heap (O(n)), then Extract-Max ($O(log n)$ each time) one by one, getting a $O(n + n log n) = O(n log n)$ algorithm.
- Max-Insert-Sort works by inserting sequentially ($O(n log n)$) and doing the same.

#hline

== QuickSort
- Split $A$ on some element (usually the last), putting all elements less than the parititon element before it, and all elements greater than the partition after it
- QuickSort each side of the array in-place (split from the new position of the parition element)
- Partition can be done in-place at $O(n)$ time and $O(1)$ space
- $Theta(n log n)$ time best and average case, $Theta(n^2)$ in the worst case.

#hline

== BFS
- Start at some node; add each neighbor to a queue; mark node as visited
- While the queue isn't empty:
    - Dequeue a node from the queue; add all neighbors to the queue; mark node as visited
== DFS
Same as BFS, but with Stack instead of a Queue

#hline

== Topological Sort
Ordering of vertices of an acyclic graph such that for every edge $(u, v)$, u
comes before v in the ordering. Start by calculating the incoming number of
edges for each node. Initialize a queue (or stack) of nodes with 0-edges (S),
- while S is not empty
    - Get a node from S
    - Assign an index to the node and increment counter
    - Remove node from consideration, and update edge counts, add to S as needed
In total this gives us an $O(|V| + |E|)$ algorithm.

#hline
