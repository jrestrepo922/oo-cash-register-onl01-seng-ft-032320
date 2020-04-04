require "pry"
class CashRegister
  
  attr_accessor :total, :discount, :price, :items
  
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end 
  
  def add_item(item, price, quantity = 1)
    @price = price
    @total = @total + price * quantity
    
    count = 0 
    
    while count < quantity
      @items << item
      count += 1
    end 
    
    
  end
  
  def apply_discount
    if @discount >  0 
      @to_take_off = (price * discount)/100 
      @total -= @to_take_off
      "After the discount, the total comes to $#{total}."
    else 
      "There is no discount to apply."
    end 
  end 
  
  def void_last_transaction
    
    if items.length > 1
      @total = 0
    else 
      @total -= @price
    end 
    binding.pry
  end 
  
end 

apple = CashRegister.new 
cash_register.add_item("apple", 0.99)
cash_register.void_last_transaction
