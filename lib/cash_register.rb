class CashRegister
    attr_accessor :discount, :total, :title, :items, :prices

    def initialize(discount=0)
        @discount = discount
        @total = 0
        @title = ""
        @items = []
        @prices = []
    end

    def add_item(title, price, qty=1)
        self.title = title
        self.total = total + price * qty
        qty.times {self.items << title}
        qty.times {self.prices << price}
    end

    def apply_discount
        if self.discount > 0
            self.total = total * (100-discount)/100
            "After the discount, the total comes to $#{total}."
        else "There is no discount to apply."
        end
    end

    def void_last_transaction
        if self.items = [] then self.total = 0.0
        else 
            self.items.pop
            self.prices.pop
            self.total = prices.sum
        end
    end


end
