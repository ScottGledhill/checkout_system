require 'checkout'

class Ten_percent_off

  def ten_percent(basket)
    if basket >= 60
      basket / 10.to_f * 9
    end
  end
end
