# x is a good number if after rotating each digit individually by 180 degrees, we get a valid number that is different from x. Each digit must be rotated - we cannot choose to leave it alone.

# A number is valid if each digit remains a digit after rotation. 0, 1, and 8 rotate to themselves; 2 and 5 rotate to each other (on this case they are rotated in a different direction, in other words 2 or 5 gets mirrored); 6 and 9 rotate to each other, and the rest of the numbers do not rotate to any other number and become invalid.

# Now given a positive number n, how many numbers x from 1 to n are good?

# Example:
# Input: 10
# Output: 4
# Explanation: 
# There are four good numbers in the range [1, 10] : 2, 5, 6, 9.
# Note that 1 and 10 are not good numbers, since they remain unchanged after rotating.

# @param {Integer} n
# @return {Integer}
def rotated_digits(n)
    count = 0
    1.upto(n) do |i|
        i = i.to_s
        next if i.include?("3") || i.include?("4") || i.include?("7")
        count+= 1 if i.include?("2") || i.include?("5") || i.include?("6") || i.include?("9")
    end
    count
end