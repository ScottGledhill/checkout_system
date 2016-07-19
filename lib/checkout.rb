require 'items'

class Checkout
  include Items
  attr_reader :basket

  def initialize
    @basket = []
  end

  def scan(item)
    basket << item[2]
  end

  def total
    basket
  end
end
