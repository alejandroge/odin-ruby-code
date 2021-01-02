# frozen_string_literal: true

def stock_picker(prices)
  (0...prices.length).to_a.combination(2).max_by { |p| prices[p.last] - prices[p.first] }
end

p stock_picker([17,3,6,9,15,8,6,1,10])
