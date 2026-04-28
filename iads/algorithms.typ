#import "utils.typ": grouped

= Algorithms

== Sorting Algorithms

#grouped([
=== Insertion Sort

```python
def InsertSort(A: list[int]):
    for i, x in enumerate(A[1:]):
        j = i - 1
        while j >= 0 and A[j] > 0:
            A[j+1] = A[j]
            j = j - 1
        A[j+1] = x
```
])

#grouped([
=== Merge Sort

```haskell
mergeSort :: Ord a => [a] -> [a]
mergeSort []  = []
mergeSort [x] = [x]
mergeSort xs  = merge (mergeSort l, mergeSort r)
  where (l, r) = splitAt (length xs `div` 2) xs

merge :: Ord a => ([a], [a]) -> [a]
merge ([], xs) = xs
merge (xs, []) = xs
merge (x:xs, y:ys) | x <= y    = x : merge(xs, y:ys)
                   | otherwise = y : merge(x:xs, ys)
```
])

== Dikjstra's Algorithm

== Edit-Distance
