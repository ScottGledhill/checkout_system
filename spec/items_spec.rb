require 'items'

describe Items do
  subject(:items) {described_class}

  it 'Can show price' do
    expect(items.lavender_heart[:price]).to eq 9.25
  end

  it 'Can show name' do
    expect(items.personalised_cufflinks[:name]).to eq 'Personalised cufflinks'
  end

  it 'Can show product number' do
    expect(items.kids_tshirt[:id]).to eq '003'
  end
end
