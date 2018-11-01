class Checkout
attr_accesor :cart, :product
   
    def initialize
        @cart = []  
        @product = set_products
    end

    def cart()
        
    end

    def scan(item)
        case item
        when
        end
        @cart << item
    end


    # def find_item
    # end
    
    private

    def set_products
        [
          {
            product: 1,
            name: 'Lavender heart',
            price: 9.25
          },
          {
            product: 2,
            name: 'Personalised cufflinks',
            price: 45.00
          },
          {
            product: 3,
            name: 'Kids T-shirt',
            price: 19.95
          }
        ]
      end

end