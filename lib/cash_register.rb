
require 'pry'

class CashRegister

  attr_accessor :total, :discount, :shopping_cart


  def initialize (discount= 0.00)

    @discount = discount
    @total = 0.00


    @shopping_cart = []


  end


  def add_item(title, price, quantity= 1)

    @total += price * quantity

    @shopping_cart << {:title => title, :price => price, :quantity => quantity}


  end

  def apply_discount

    if @discount != 0.00
      @total = @total - (@total*(@discount/100.0))
      "After the discount, the total comes to $800."
    else
      "There is no discount to apply."

    end

  end

  def items

    item_list =[]
    @shopping_cart.each do |key1, value1|
      item_list << key1[:title]
      binding.pry

    end
    item_list





  end

  def void_last_transaction

    @total = @total - (@shopping_cart[-1][:price] * @shopping_cart[-1][:quantity])



  end






end
