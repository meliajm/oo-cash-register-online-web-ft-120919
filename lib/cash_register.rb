require 'pry'

class CashRegister
  
  attr_accessor :total
  # attr_reader :total 
  # :last_transaction
  
  def initialize(employee_discount = 0)
    @total = 0
    @employee_discount = employee_discount
  end
  
  # def total
  #   @total
  # end
  
  def discount(employee_discount = 20)
    employee_discount
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end
  
  
  def apply_discount()
    if discount == 20
       
      self.total = (100 - discount) / 100.0 * self.total
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  
  def items
    
  end
  
  def void_last_transaction
    
  end
  
  
end 