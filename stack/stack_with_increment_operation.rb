# Design a stack which supports the following operations.

# Implement the CustomStack class:

# CustomStack(int maxSize) Initializes the object with maxSize which is the maximum number of elements in the stack or do nothing if the stack reached the maxSize.
# void push(int x) Adds x to the top of the stack if the stack hasn't reached the maxSize.
# int pop() Pops and returns the top of stack or -1 if the stack is empty.
# void inc(int k, int val) Increments the bottom k elements of the stack by val. If there are less than k elements in the stack, just increment all the elements in the stack.

class CustomStack

=begin
    :type max_size: Integer
=end
    def initialize(max_size)
        @max_size = max_size 
        @arr = []
        @top = 0
    end


=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
        @top = 0 if @top < 0
        unless @top == @max_size
            @arr[@top] = x
            @top += 1
        end
    end


=begin
    :rtype: Integer
=end
    def pop()
        @top -= 1
        return -1 if @top < 0
        @arr[@top]
    end


=begin
    :type k: Integer
    :type val: Integer
    :rtype: Void
=end
    def increment(k, val)
        tmp_stack = []
        until @arr.empty? do
            tmp_stack.push(@arr.pop())
        end
        i = 1
        while i <= k && @arr.size <= @max_size-1 do
            m = tmp_stack.pop()
            @arr.push(m+val) if m && m >= 0
            i += 1
        end
        until tmp_stack.empty? do
            @arr.push(tmp_stack.pop())
        end
    end


end

# Your CustomStack object will be instantiated and called as such:
# obj = CustomStack.new(max_size)
# obj.push(x)
# param_2 = obj.pop()
# obj.increment(k, val)