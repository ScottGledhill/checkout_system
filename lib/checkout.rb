
class Checkout
  attr_reader :basket

  def initialize
    @basket = []
  end

  def scan(item = Items.new)
    basket << item
  end

  def total
    basket
  end
end
