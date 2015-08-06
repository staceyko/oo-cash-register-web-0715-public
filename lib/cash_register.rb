class CashRegister

attr_accessor :total, :discount, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount 
    @items = [] 
  end

  def add_item(title, price, quantity=1)
     apply_discount  
    @total += price * quantity
    quantity.times do 
      @items << title
     
      end

end

  def items
    @items
  end
  
require 'pry'
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    
    else 
       @total = @total.to_f - ((@discount.to_f/100) * @total.to_f) 
        return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

end