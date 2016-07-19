require 'checkout'

describe Ten_percent_off do
  subject(:promotions) {described_class.new}
  subject(:checkout) {Checkout.new}
  let(:checkout) { double Checkout}

  it 'calculates new total after 10% discount' do
    expect(promotions.ten_percent(70)).to eq 63
  end

  it 'doesnt apply discount if under 60' do
    allow(checkout).to receive(:total).and_return(50)
    expect(promotions.ten_percent(50)).to eq 50
  end
end
