require 'items'
require 'ten_percent'
require 'multibuy'

class Checkout
  include Items
  attr_reader :basket, :ten, :total_after_multibu, :multibuy

  def initialize(ten = Ten_percent_off.new, multibuy = Multibuy.new)
    @multibuy = multibuy
    @ten = ten
    @basket = []
    @total_after_multibuy
  end

  def scan(item)
    basket << item
  end

  def total
    multibuy_discount_check
    all_prices = basket.map {|item| item[:price]}
    @total_after_multibuy = all_prices.inject(:+)
    ten_percent_discount_check
  end

  private
  
  def ten_percent_discount_check
    @ten.ten_percent(@total_after_multibuy)
  end

  def multibuy_discount_check
    @multibuy.multibuy_discount(basket)
  end
end
