require 'checkout'
require 'items'
require 'ten_percent'


describe 'integration' do
  subject(:checkout) {Checkout.new}
  subject(:item) {Items}

  it 'checkout and promotions' do
    checkout.scan(item.lavender_heart)
    checkout.scan(item.kids_tshirt)
    checkout.scan(item.kids_tshirt)
    checkout.scan(item.kids_tshirt)
    expect(checkout.basket).to eq [9.25, 19.95, 19.95, 19.95]
    checkout.total
    expect(checkout.total_after_discounts).to eq 69.1
  end
end
