# Given a balanced parentheses string s, compute the score of the string based on the following rule:

# () has score 1
# AB has score A + B, where A and B are balanced parentheses strings.
# (A) has score 2 * A, where A is a balanced parentheses string.
def score_of_parentheses(s)
    ans = 0
    bal = 0
    s.each_char.with_index do |c, i|
        if c == '('
            bal += 1
        else
            bal -= 1
            ans += 1 << bal if s[i-1] == '('    
        end
    end
    ans
end