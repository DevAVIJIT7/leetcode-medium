# Given a string S of '(' and ')' parentheses, we add the minimum number of parentheses ( '(' or ')', and in any positions ) so that the resulting parentheses string is valid.

# Formally, a parentheses string is valid if and only if:

# It is the empty string, or
# It can be written as AB (A concatenated with B), where A and B are valid strings, or
# It can be written as (A), where A is a valid string.
# Given a parentheses string, return the minimum number of parentheses we must add to make the resulting string valid.

# @param {String} s
# @return {Integer}
def min_add_to_make_valid(s)
  op = 0
  cl = 0
  a = []
  s.each_char do |c|
      if c == '('
          a.push(c)
          op += 1
      else
          if a.empty? 
              a.push(c)
              cl += 1
          else
            x = a.pop()
            if x != '('
              a.push(x)
              a.push(c)
              cl += 1
            else
              op -= 1 if op > 0
            end
          end
      end
  end
  (op+cl)
end