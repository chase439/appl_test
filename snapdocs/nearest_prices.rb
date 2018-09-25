# Author: Chase Tran
# Date: September 24, 2018
#
# Description: Create a method that converts the prices array to
#   its nearest array of integer values where the sum of the
#   original array matches the sum of new array. See specs
#   for examples. Price of $5.4 has higher precedent than price
#   of $5.3 on being promoted to $6.
# Assumption: all prices are float

def solution(prices)
  # split float into array of integer and its decimal and
  # sort resulting array of array by the decimal values in descending order
  # each float => [integer, decimal, index], save order via index
  sorted_split_prices = prices.collect.
    with_index { |p, index| p.divmod(1) << index }.
    sort_by { |sp| sp[1] }.reverse

  # rounded sum the decimal parts
  decimal_total = sorted_split_prices.
    inject(0){|sum,sp| sum + sp[1] }.
    round

  # add 1 to the first #decimal_total (highest decimal value) prices
  sorted_split_prices.first(decimal_total).each do |sp|
    sp[0] += 1
  end

  # revert to original order, return only integer values
  sorted_split_prices.sort_by { |sp| sp.last }.collect(&:first)
end
