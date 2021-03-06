require 'checkout'
require 'items'

describe 'integration' do
  subject(:checkout) {Checkout.new}
  subject(:item) {Items}

  it 'checkout and promotions' do
    checkout.scan(item.lavender_heart)
    checkout.scan(item.kids_tshirt)
    checkout.scan(item.kids_tshirt)
    checkout.scan(item.kids_tshirt)
    checkout.basket { is_expected.to include("001", "Lavender heart")}
    expect(checkout.total).to eq 62.19
  end

  it 'checkout and promotions' do
    checkout.scan(item.lavender_heart)
    checkout.scan(item.personalised_cufflinks)
    checkout.scan(item.kids_tshirt)
    expect(checkout.total).to eq 66.78
  end

  it 'checkout and promotions' do
    checkout.scan(item.lavender_heart)
    checkout.scan(item.kids_tshirt)
    checkout.scan(item.lavender_heart)
    checkout.basket { is_expected.to include("003")}
    expect(checkout.total).to eq 36.95
  end

  it 'checkout and promotions' do
    checkout.scan(item.lavender_heart)
    checkout.scan(item.personalised_cufflinks)
    checkout.scan(item.lavender_heart)
    checkout.scan(item.kids_tshirt)
    expect(checkout.total).to eq 73.76
    expect(checkout.scan("POKEMONGO")).to eq "error processing item"
  end
end
