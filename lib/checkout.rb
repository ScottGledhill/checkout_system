require 'items'
require 'ten_percent'
require 'multibuy'

class Checkout
  include Items
  attr_reader :basket, :ten, :total_after_multibuy, :multibuy

  def initialize(ten = Ten_percent_off.new, multibuy = Multibuy.new)
    @multibuy = multibuy
    @ten = ten
    @basket = []
    @total_after_multibuy
  end

  def scan(item)
    if item_check(item)
      basket << item
    else
      error
    end
  end

  def total
    multibuy_discount_check
    all_prices = basket.map {|item| item[:price]}
    @total_after_multibuy = all_prices.inject(:+)
    ten_percent_discount_check
  end

  private

  def item_check(item)
    item == Items.lavender_heart || item == Items.personalised_cufflinks || item == Items.kids_tshirt
  end

  def error
    "error processing item"
  end

  def ten_percent_discount_check
    @ten.ten_percent(@total_after_multibuy)
  end

  def multibuy_discount_check
    @multibuy.multibuy_discount(basket)
  end
end
