# Given an array arr of positive integers, consider all binary trees such that:

# Each node has either 0 or 2 children;
# The values of arr correspond to the values of each leaf in an in-order traversal of the tree.  (Recall that a node is a leaf if and only if it has 0 children.)
# The value of each non-leaf node is equal to the product of the largest leaf value in its left and right subtree respectively.
# Among all possible binary trees considered, return the smallest possible sum of the values of each non-leaf node.  It is guaranteed this sum fits into a 32-bit integer.

def mct_from_leaf_values(arr)
    ans = 0
    st = [9999]
    arr.each do |x|
        while st[-1] <= x
            y = st.pop()
            ans += y*[x, st[-1]].min
        end
        st << x
    end
    
    i = 2
    while i < st.size
        ans += st[i] * st[i-1]
        i+=1
    end
    ans
end