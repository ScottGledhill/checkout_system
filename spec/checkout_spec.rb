require 'Checkout'
require 'Items'

describe Checkout do
  subject(:checkout) {described_class.new}
  subject(:item) {Items}

  it 'Scans items into basket' do
    checkout.scan(item.lavender_heart)
    expect(checkout.basket).to eq [9.25]
  end

  it 'Total items' do
    checkout.scan(item.lavender_heart)
    checkout.scan(item.personalised_cufflinks)
    checkout.scan(item.kids_tshirt)
    checkout.total
    expect(checkout.total_after_discounts).to eq 74.2
  end

  it 'Total items' do
    checkout.scan(item.lavender_heart)
    checkout.scan(item.kids_tshirt)
    checkout.scan(item.lavender_heart)
    checkout.total
    expect(checkout.total_after_discounts).to eq 38.45
  end

  it 'Total items' do
    checkout.scan(item.lavender_heart)
    checkout.scan(item.personalised_cufflinks)
    checkout.scan(item.lavender_heart)
    checkout.scan(item.kids_tshirt)
    checkout.total
    expect(checkout.total_after_discounts).to eq 83.45
  end
end
