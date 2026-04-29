def MaxHeap:
    # Initialize an empty heap
    def __init__(self, value: int, left = None, right = None):
        # Assert this node is greater than the root of its subtrees
        assert not left or value > left.value
        assert not right or value > right.value
        # Assert the right node is larger than the left node, if they exist
        assert not right or not left or right.value > left.value
        # Initialize variables
        self.value = value
        self.left = left
        self.right = right
    # Convert a list into a MaxHeap
    @staticmethod
    def heapify(arr: list[int]):
        pass
    # Fix MaxHeap with broken root-node
    def sift_down(self):
        left, right = self.left, self.right
        if value < left.value:
            pass
            # Gets the max element
    def max_element(self):
        pass
