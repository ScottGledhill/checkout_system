require 'Checkout'
require 'Items'

describe Checkout do
  subject(:checkout) {described_class.new}
  subject(:item) {Items}

  it 'Scans items into basket' do
    checkout.scan(item.lavender_heart)
    expect(checkout.basket[0][:price]).to eq 9.25
  end

  it 'Total items' do
    checkout.scan(item.lavender_heart)
    checkout.scan(item.personalised_cufflinks)
    checkout.scan(item.kids_tshirt)
    expect(checkout.total).to eq 66.78
  end

  it 'Total items' do
    checkout.scan(item.lavender_heart)
    checkout.scan(item.kids_tshirt)
    checkout.scan(item.lavender_heart)
    expect(checkout.total).to eq 36.95
  end

  it 'Total items' do
    checkout.scan(item.lavender_heart)
    checkout.scan(item.personalised_cufflinks)
    checkout.scan(item.lavender_heart)
    checkout.scan(item.kids_tshirt)
    expect(checkout.total).to eq 73.76
  end
end
