# Given an amount and the denominations of coins available, determine how many ways change can be made for amount. There is a limitless supply of each coin type.

# Example


# There are  ways to make change for : , , and .

# Function Description

# Complete the getWays function in the editor below.

# getWays has the following parameter(s):

# int n: the amount to make change for
# int c[m]: the available coin denominations
# Returns

# int: the number of ways to make change
# Input Format

# The first line contains two space-separated integers  and , where:
#  is the amount to change
#  is the number of coin types
# The second line contains  space-separated integers that describe the values of each coin type.

# Constraints

# Each  is guaranteed to be distinct.
# Hints

# Solve overlapping subproblems using Dynamic Programming (DP):
# You can solve this problem recursively but will not pass all the test cases without optimizing to eliminate the overlapping subproblems. Think of a way to store and reference previously computed solutions to avoid solving the same subproblem multiple times. * Consider the degenerate cases:
# - How many ways can you make change for  cents? - How many ways can you make change for  cents if you have no coins? * If you're having trouble defining your solutions store, then think about it in terms of the base case . - The answer may be larger than a -bit integer.

# Sample Input 0

# 4 3
# 1 2 3
# Sample Output 0

# 4
# Explanation 0

# There are four ways to make change for  using coins with values given by :

# Sample Input 1

# 10 4
# 2 5 3 6
# Sample Output 1

# 5
# Explanation 1

# There are five ways to make change for  units using coins with values given by :

def getWays(n, c)
    # Write your code here
    w = n
    m = c.length
    dp = Array.new(m+1){Array.new(w+1)}
    0.upto(m) do |i|
        dp[i][0] = 1
    end
    0.upto(w) do |j|
        dp[0][j] = 0
    end
    1.upto(m) do |i|
        1.upto(w) do |j|
            x = j-c[i-1] >= 0 ? dp[i][j-c[i-1]] : 0
            y = j >= 1 ? dp[i-1][j] : 0
            dp[i][j] = x+y
        end
    end
    p dp
    dp[m][w]
end
