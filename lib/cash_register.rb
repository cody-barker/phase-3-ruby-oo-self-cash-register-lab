class CashRegister
    attr_accessor :discount, :total, :title, :items

    def initialize(discount=0)
        @discount = discount
        @total = 0
        @title = ""
        @items = []
    end

    def add_item(title, price, qty=1)
        self.title = title
        self.total = total + price * qty
        self.items >> title
    end

    def apply_discount
        if self.discount > 0
            self.total = total * (100-discount)/100
            "After the discount, the total comes to $#{total}."
        else "There is no discount to apply."
        end
    end

    def items
        self.items
    end

end
