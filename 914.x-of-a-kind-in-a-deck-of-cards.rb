#
# @lc app=leetcode id=914 lang=ruby
#
# [914] X of a Kind in a Deck of Cards
#

# @lc code=start
# @param {Integer[]} deck
# @return {Boolean}
def has_groups_size_x(deck)
  h = {}
  arr = []
  deck.each { |card| h[card] ? h[card] += 1 : h[card] = 1 }
  h.each {|_, v| arr << prime_factors(v)}

  return false if arr.include?([])
  return arr[0].find { |prime| arr[1..].all? { |a| a.include?(prime) } } != nil
end

def prime_factors(n)
  factors = []
  divisor = 2

  while n > 1
    if n % divisor == 0
      factors << divisor
      n /= divisor
    else
      divisor += 1
    end
  end

  factors
end
# @lc code=end

