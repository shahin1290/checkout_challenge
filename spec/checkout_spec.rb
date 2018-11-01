require './lib/checkout.rb'
require './lib/product'

describe Checkout do

    it 'scan item with the correct price' do
        expect(Checkout.new.scan('Lavender heart')).to eq 9.25
    end

end