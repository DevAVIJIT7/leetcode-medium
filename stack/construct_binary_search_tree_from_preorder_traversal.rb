# Given an array of integers preorder, which represents the preorder traversal of a BST (i.e., binary search tree), construct the tree and return its root.

# It is guaranteed that there is always possible to find a binary search tree with the given requirements for the given test cases.

# A binary search tree is a binary tree where for every node, any descendant of Node.left has a value strictly less than Node.val, and any descendant of Node.right has a value strictly greater than Node.val.

# A preorder traversal of a binary tree displays the value of the node first, then traverses Node.left, then traverses Node.right.

# Input: preorder = [8,5,1,7,10,12]
# Output: [8,5,10,1,7,null,12]
# Example 2:

# Input: preorder = [1,3]
# Output: [1,null,3]
 

# Constraints:

# 1 <= preorder.length <= 100
# 1 <= preorder[i] <= 108
# All the values of preorder are unique.

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} preorder
# @return {TreeNode}
def bst_from_preorder(preorder)
    s = []
    root = TreeNode.new(preorder[0])
    s << root
    i = 1
    while i < preorder.length
        curr_val = preorder[i]
        curr_node = TreeNode.new(curr_val)
        prev_node = s[-1]
        prev_val = prev_node.val
        
        if curr_val < prev_val
            prev_node.left = curr_node
        else
            while !s.empty? && s[-1].val < curr_val
                parent_node = s[-1]
                s.pop()
            end
            parent_node.right = curr_node
        end
        s << curr_node
        i += 1
    end
    root
end