require 'Checkout'
require 'Items'

describe Checkout do
  subject(:checkout) {described_class.new}
  subject(:item) {Items}

  it 'Scans items into basket' do
    checkout.scan(item.lavender_heart)
    expect(checkout.basket[0][:price]).to eq 9.25
  end
end
