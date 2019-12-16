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
    i = 0 
    while i < quantity do 
      array_items << title * quantity
      
    end
    
    self.total += price * quantity
    array_items
  end
  
  
  def apply_discount()
    if discount != 0
       
      self.total = (100 - discount) / 100.0 * self.total
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  
  def items()
    
    binding.pry
  end
  
  def void_last_transaction
    
  end
  
  
end 