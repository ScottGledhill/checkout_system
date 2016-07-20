require 'checkout'

class Ten_percent_off

  def ten_percent(basket)
    result = basket >= 60 ? basket / 10 * 9 : basket
    result.round(2)
  end
end
