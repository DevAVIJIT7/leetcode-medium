# Given two strings s and t, return true if s is a subsequence of t, or false otherwise.

# A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).

 

# Example 1:

# Input: s = "abc", t = "ahbgdc"
# Output: true
# Example 2:

# Input: s = "axc", t = "ahbgdc"
# Output: false

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
    n = s.length
    m = t.length
    
    i = 0
    j = 0
    new_str = ''
    while i < n && j < m
      if s[i] == t[j]
        new_str += s[i]
        
        i+=1
        j+=1
      else
        j+=1
      end
    end
    new_str == s
end