# A permutation perm of n + 1 integers of all the integers in the range [0, n] can be represented as a string s of length n where:

# s[i] == 'I' if perm[i] < perm[i + 1], and
# s[i] == 'D' if perm[i] > perm[i + 1].
# Given a string s, reconstruct the permutation perm and return it. If there are multiple valid permutations perm, return any of them.

 

# Example 1:

# Input: s = "IDID"
# Output: [0,4,1,3,2]
# Example 2:

# Input: s = "III"
# Output: [0,1,2,3]
# Example 3:

# Input: s = "DDI"
# Output: [3,2,0,1]

# @param {String} s
# @return {Integer[]}
def di_string_match(s)
  n = s.length
  i = 0
  lo = 0
  ho = n
  ans = Array.new(n+1)
  while i < n
      if s[i] == 'I'
          ans[i] = lo
          lo += 1
      else
          ans[i] = ho
          ho -= 1
      end
      i += 1
  end
  ans[n] = lo
  
  ans
end