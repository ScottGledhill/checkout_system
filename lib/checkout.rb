require 'items'

class Checkout
  include Items
  attr_reader :basket

  def initialize
    @basket = []
  end

  def scan(item)
    basket << item[2].to_f
  end

  def total
    @basket = basket.inject(:+)
  end
end
