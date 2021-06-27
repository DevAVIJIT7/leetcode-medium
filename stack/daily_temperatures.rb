# Given an array of integers temperatures represents the daily temperatures, 
# return an array answer such that answer[i] is the number of days you have to wait after the ith day to get a warmer temperature. 
# If there is no future day for which this is possible, keep answer[i] == 0 instead.
def daily_temperatures(temperatures)
    n = temperatures.length
    i = n-2
    st = [n-1]
    right = [n-1]
    while i >= 0 
        p st
        if temperatures[st[-1]] > temperatures[i]
            right << st[-1]
        else
            while !st.empty? && temperatures[st[-1]] <= temperatures[i]
                st.pop()
            end
            if st.empty?
                right << i
            else
                right << st[-1]
            end
        end
        st << i
        i -= 1
    end
    i = 0
    res = []
    while i < n
        res[i] = right[n-i-1] - i
        i += 1
    end
    res
end
