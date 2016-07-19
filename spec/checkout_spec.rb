require 'Checkout'
require 'Items'

describe Checkout do
  subject(:checkout) {described_class.new}
  subject(:item) {Items}

  it {is_expected.to respond_to(:scan)}

  it 'Scans items' do
    checkout.scan("Lavender heart")
    expect(checkout.basket).to include "Lavender heart"
  end

  it 'Totals items' do
    expect(checkout.total).to eq checkout.basket
  end

  it 'Total items' do
    checkout.scan(item.lavender_heart)
    checkout.scan(item.personalised_cufflinks)
    checkout.scan(item.kids_tshirt)
    checkout.total
    expect(checkout.basket).to eq '£66.78'
  end

  it 'Total items' do
    checkout.scan(item.lavender_heart)
    checkout.scan(item.kids_tshirt)
    checkout.scan(item.lavender_heart)
    checkout.total
    expect(checkout.basket).to eq '£36.95'
  end

  it 'Total items' do
    checkout.scan(item.lavender_heart)
    checkout.scan(item.personalised_cufflinks)
    checkout.scan(item.lavender_heart)
    checkout.scan(item.kids_tshirt)
    checkout.total
    expect(checkout.basket).to eq '£73.76'
  end
end
