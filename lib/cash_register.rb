class CashRegister

    attr_accessor :discount, :total, :title, :price
   
    @@items = []

    def initialize(discount = 0)
        @total = 0
        @discount = discount
    end

    def add_item(title, price, qty = 1)
       @total = total + price * qty
       @@items << title * qty
    end

    def apply_discount
      @total = total * (100 - discount)/100
      if @discount > 0
        "After the discount, the total comes to $#{@total}."
      else
        "There is no discount to apply."
      end
    end

    def items
        
    end

    def void_last_transaction
    
    end

end
