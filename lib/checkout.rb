class Checkout
  attr_reader :item
  def scan(item)
    @item = item
  end
end
