require './lib/checkout.rb'
require './lib/product'

describe Checkout do

    it 'scans item with the correct price' do
        expect(Checkout.new.scan('Lavender heart')).to eq 9.25
    end

    # it 'calculate total basket amount' do
    #     expect(subject.basket(total)).to eq 74.2
    # end

end