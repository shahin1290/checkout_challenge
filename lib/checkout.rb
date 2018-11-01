class Checkout
    attr_accessor :cart, :products, :product, :sum
   
    def initialize
        @cart = []  
        @products = set_products
        @sum = 0
    end

    def scan(item)
        @cart << find_item(item)
        @cart[0]
    end

    def find_item(item)
        @product = set_products.find { |h| h[:name] == item }[:price]
    end

    def total
        @cart.each do |price|
            @sum += price
        end
    end

    def discounted_total
        if more_than_sixty && buy_two_lavender_heart
            @sum = ((@sum - (@count * 9.25) + (@count * 8.50)) * 0.9).round 3
        elsif more_than_sixty
            @sum * 0.9
        elsif buy_two_lavender_heart
            @sum = @sum - (@count * 9.25) + (@count * 8.50)
        else
            @sum
        end
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

      def more_than_sixty
        @sum > 60
      end
      def buy_two_lavender_heart
        @count = 0
        @cart.each do |item_price|
            item_price == 9.25 ? @count += 1 : nil
        end
        @count >=2 ? true : false
      end

end