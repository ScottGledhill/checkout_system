require 'items'
require 'ten_percent'

class Checkout
  include Items
  attr_reader :basket, :ten, :total_after_discounts

  def initialize(ten = Ten_percent_off.new)
    @ten = ten
    @basket = []
    @total_after_discounts
  end

  def scan(item)
    basket << item[2].to_f
  end

  def total
    @total_after_discounts = basket.inject(:+)
    @ten.ten_percent(total_after_discounts)
  end
end
