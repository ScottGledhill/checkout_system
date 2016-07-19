require 'Checkout'


describe Checkout do
subject(:checkout) {described_class.new}

  it {is_expected.to respond_to(:scan)}
end
