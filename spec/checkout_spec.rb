require 'Checkout'


describe Checkout do
  subject(:checkout) {described_class.new}
  it {is_expected.to respond_to(:scan)}

  it 'Scans items' do
    checkout.scan("Lavender heart")
    expect(checkout.item).to eq "Lavender heart"
  end
end
