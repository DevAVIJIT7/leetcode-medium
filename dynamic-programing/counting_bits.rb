#Given an integer n, return an array ans of length n + 1 such that for each i (0 <= i <= n), ans[i] is the number of 1's in the binary representation of i.


# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
    return [0] if n==0
    return [0, 1] if n==1
    f = [0, 1, 1]
    return f if n <= 2
    3.upto(n) do |i|
        f[i] = i%2 + f[i/2]
    end
    f
end