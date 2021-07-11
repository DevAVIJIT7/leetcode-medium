# Given an integer rowIndex, return the rowIndexth (0-indexed) row of the Pascal's triangle.

# In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:


 

# Example 1:

# Input: rowIndex = 3
# Output: [1,3,3,1]
# Example 2:

# Input: rowIndex = 0
# Output: [1]
# Example 3:

# Input: rowIndex = 1
# Output: [1,1]

# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
    f=[[1], [1,1]]
    2.upto(row_index) do |i|
        row = [1]
        1.upto(i) do |j|
            row[j] = f[i-1][j].to_i + f[i-1][j-1].to_i
        end
        f[i] = row
    end
    f[row_index]
 end