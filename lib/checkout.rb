class Checkout
  attr_reader :item, :basket
  def scan(item)
    @item = item
  end

  def total
    @basket
  end
end
