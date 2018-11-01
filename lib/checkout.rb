class Checkout
    attr_accessor :cart, :products, :product
   
    def initialize
        @cart = []  
        @products = set_products
    end

    def scan(item)
        @cart << find_item(item)
        @cart[0]
    end

    def find_item(item)
        @product = set_products.find { |h| h[:name] == item }[:price]
    end

    private

    def set_products
        [
          {
            # product: 1,
            name: 'Lavender heart',
            price: 9.25
          },
          {
            # product: 2,
            name: 'Personalised cufflinks',
            price: 45.00
          },
          {
            # product: 3,
            name: 'Kids T-shirt',
            price: 19.95
          }
        ]
      end

end