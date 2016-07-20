
class Multibuy

  def multibuy_discount(basket)
    if discount_valid?(basket)
      apply_discount(basket)
    end
  end

  private
  
  def discount_valid?(basket)
    counted = Hash.new(0)
    basket.each { |h| counted[h[:name]] += 1 }
    counted = Hash[counted.map {|k,v| [k,v] }]
    counted["Lavender heart"] >= 2
  end

  def apply_discount(basket)
    basket.each do |item|
      if item[:name] == "Lavender heart"
        item[:price] = 8.50
      end
    end
  end
end
