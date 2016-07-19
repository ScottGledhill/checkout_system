require 'checkout'

class Ten_percent_off

  def ten_percent(basket)
    basket >= 60 ? basket / 10.to_f * 9 : basket
  end
end
