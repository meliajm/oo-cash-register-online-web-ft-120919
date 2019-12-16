require 'pry'

class CashRegister
  
  attr_accessor :total, :discount
  # attr_reader :total 
  # :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  # def total
  #   @total
  # end
  
  
  def add_item(title, price, quantity = 1)
    array_items = []
    array_items << title * quantity
    self.total += price * quantity
  end
  
  
  def apply_discount()
    if discount != 0
       
      self.total = (100 - discount) / 100.0 * self.total
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  
  def items(a, b)
    add_item
  end
  
  def void_last_transaction
    
  end
  
  
end 