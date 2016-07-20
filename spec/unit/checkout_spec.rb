require 'Checkout'
require 'Items'

describe Checkout do
  subject(:checkout) {described_class.new}
  subject(:item) {Items}

  it 'scans items into basket' do
    checkout.scan(item.lavender_heart)
    expect(checkout.basket[0][:price]).to eq 9.25
  end

  it 'produces error if not legit item' do
    expect(checkout.scan("donald trumps hair")).to eq "error processing item"
  end
end
