require './lib/checkout.rb'

describe Checkout do

    it 'scans item with the correct price' do
        expect(subject.scan('Lavender heart')).to eq 9.25
    end

    it 'calculate total basket amount' do
        subject.scan('Lavender heart')
        subject.scan('Personalised cufflinks')
        subject.scan('Kids T-shirt')
        subject.total
        expect(subject.sum).to eq 74.2
    end

    it 'gives 10% of total is above 60' do
        subject.scan('Lavender heart')
        subject.scan('Personalised cufflinks')
        subject.scan('Kids T-shirt')
        subject.total
        expect(subject.discounted_total).to eq 66.78
    end

    it 'gives discounted price of 8.50 for two or more Lavender hearts' do
        subject.scan('Lavender heart')
        subject.scan('Lavender heart')
        subject.scan('Kids T-shirt')
        subject.total
        expect(subject.discounted_total).to eq 36.95
    end

    it 'gives discounted price for both promotions together' do
        subject.scan('Lavender heart')
        subject.scan('Lavender heart')
        subject.scan('Lavender heart')
        subject.scan('Personalised cufflinks')
        subject.total
        expect(subject.discounted_total).to eq 63.45
    end

end
