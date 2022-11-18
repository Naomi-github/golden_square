class Menu
  def initialize
    @all_items = []
    @items_selected = []
    @order = []
    @total = 0
  end

  def menu_items
    # array of menu items
    @all_items = ["burger", "chips", "sandwhich"]
  end

  def print_menu
    # prints the array of menu items
    @all_items
  end

  def selected_dishes(items, quantity)
    #stores the selected dishes
    # and the number required
    @items_selected << items
    # p @items_selected
    # p @all_items[0]
    item = @items_selected.each { |item| @all_items.find(items)}
    item = item.pop
    @order << "#{quantity}x #{item}"
  end

  def order
    #returns the list of items ordered and the quantity
    @order
  end

  def total_cost
    # sums the total amount of the items ordered
    num = "0123456789"
    cost = 0
    quantity_of_item = 0
    @order.each do |order|
      item = order.split("")
      quantity_of_item = item[0].to_i
        @total += quantity_of_item * 5
    end
    "£#{@total}"
  end



  def receipt
    #prints the items ordered and the total cost
    "#{@order.join(", ")} total: £#{@total}"
  end
end
