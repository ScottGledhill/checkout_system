require 'Checkout'


describe Checkout do
  subject(:checkout) {described_class.new}

  it {is_expected.to respond_to(:scan)}

  it 'Scans items' do
    checkout.scan("Lavender heart")
    expect(checkout.basket).to include "Lavender heart"
  end

  it 'Totals items' do
    expect(checkout.total).to eq checkout.basket
  end

  it 'Total items' do
    checkout.scan('001')
    checkout.scan('002')
    checkout.scan('003')
    expect(checkout.basket).to eq '£66.78'
  end

  it 'Total items' do
    checkout.scan('001')
    checkout.scan('003')
    checkout.scan('001')
    expect(checkout.basket).to eq '£36.95'
  end

  it 'Total items' do
    checkout.scan('001')
    checkout.scan('002')
    checkout.scan('001')
    checkout.scan('003')
    expect(checkout.basket).to eq '£73.76'
  end
end
