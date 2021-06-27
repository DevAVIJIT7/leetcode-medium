# You are given a string s that consists of lower case English letters and brackets. 
# Reverse the strings in each pair of matching parentheses, starting from the innermost one.
# Your result should not contain any brackets.

# Example 1:

# Input: s = "(abcd)"
# Output: "dcba"
# Example 2:

# Input: s = "(u(love)i)"
# Output: "iloveu"
# Explanation: The substring "love" is reversed first, then the whole string is reversed.
# Example 3:

# Input: s = "(ed(et(oc))el)"
# Output: "leetcode"
# Explanation: First, we reverse the substring "oc", then "etco", and finally, the whole string.
# Example 4:

# Input: s = "a(bcdefghijkl(mno)p)q"
# Output: "apmnolkjihgfedcbq"

def reverse_parentheses(s)
    st = []
    
    s.each_char do |c|
        if c == ')'
            x = ''
            ms = ''
            while x != '(' do
                x = st.pop()
                ms += x unless x == '('
            end

            ms.each_char do |y|
                st << y
            end
        else
            st.push(c)
        end
    end
    st.join('')
end

