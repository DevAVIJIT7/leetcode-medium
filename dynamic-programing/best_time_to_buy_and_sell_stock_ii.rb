# You are given an array prices where prices[i] is the price of a given stock on the ith day.

# Find the maximum profit you can achieve. You may complete as many transactions as you like (i.e., buy one and sell one share of the stock multiple times).

# Note: You may not engage in multiple transactions simultaneously (i.e., you must sell the stock before you buy again).

 

# Example 1:

# Input: prices = [7,1,5,3,6,4]
# Output: 7
# Explanation: Buy on day 2 (price = 1) and sell on day 3 (price = 5), profit = 5-1 = 4.
# Then buy on day 4 (price = 3) and sell on day 5 (price = 6), profit = 6-3 = 3.
# Example 2:

# Input: prices = [1,2,3,4,5]
# Output: 4
# Explanation: Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
# Note that you cannot buy on day 1, buy on day 2 and sell them later, as you are engaging multiple transactions at the same time. You must sell before buying again.
# Example 3:

# Input: prices = [7,6,4,3,1]
# Output: 0
# Explanation: In this case, no transaction is done, i.e., max profit = 0.

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    st = []
    smallest = prices[0] 
    count = 0
    prices.each do |i|
        if !st.empty? && st[-1] > i
            x = st.pop()
            largest = x
            
            while x!= smallest || !st.empty?
                x = st.pop()
            end
            count += (largest - smallest)
            smallest = i
        end
        st << i
    end
    count += (st[-1] - smallest) if st.length <= prices.length
    count < 0 ? 0 : count
end

# Best Approach
# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    maxprofit = 0
    n = prices.length
    i = 1
    while i < n
      maxprofit += (prices[i] - prices[i-1]) if prices[i] > prices[i-1]
      i += 1
    end
    maxprofit
end