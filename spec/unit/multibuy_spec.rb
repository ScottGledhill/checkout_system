require 'multibuy'

describe Multibuy do
  subject(:multibuy) {described_class.new}

  it 'calculates new total after multibuy discount' do
    basket = [{id: "001", name: "Lavender heart",price: 9.25}, {id: "001", name: "Lavender heart", price: 9.25}]
    expect(multibuy.multibuy_discount(basket)).to eq [{:id=>"001", :name=>"Lavender heart", :price=>8.5}, {:id=>"001", :name=>"Lavender heart", :price=>8.5}]
  end
end
