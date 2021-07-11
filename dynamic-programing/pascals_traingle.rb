# Given an integer numRows, return the first numRows of Pascal's triangle.

# In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:


 

# Example 1:

# Input: numRows = 5
# Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
# Example 2:

# Input: numRows = 1
# Output: [[1]]

# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
    return [] if num_rows == 0
    return [[1]] if num_rows == 1
    f = [[1], [1,1]]
    2.upto(num_rows-1) do |i|
        row = [1]
        1.upto(i) do |j|
            row[j] = f[i-1][j-1].to_i + f[i-1][j].to_i
        end

        f[i] = row
    end
    f
end