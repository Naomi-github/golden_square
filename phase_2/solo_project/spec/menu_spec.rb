require 'menu'

RSpec.describe Menu do
  context 'prints menu' do
    it 'prints the menu to the terminal' do
      menu = Menu.new
      menu.menu_items
      expect(menu.print_menu).to eq ["burger", "chips", "sandwhich"]
    end
  end

  context 'returns the selected menu items' do
    it 'returns a single item' do
      menu = Menu.new
      menu.menu_items
      menu.print_menu
      menu.selected_dishes("sandwhich", 1)
      expect(menu.order).to eq ["1x sandwhich"]
    end

    it 'returns a multiple items' do
      menu = Menu.new
      menu.menu_items
      menu.print_menu
      menu.selected_dishes("sandwhich", 1)
      menu.selected_dishes("burger", 2)
      menu.selected_dishes("chips", 3)
      expect(menu.order).to eq ["1x sandwhich", "2x burger", "3x chips"]
    end
  end

  context 'returns the sum cost of the items selected' do
    it 'returns £30 as the total cost of 6 items' do
      menu = Menu.new
      menu.menu_items
      menu.print_menu
      menu.selected_dishes("sandwhich", 1)
      menu.selected_dishes("burger", 2)
      menu.selected_dishes("chips", 3)
      expect(menu.total_cost).to eq '£30'
    end

    it 'returns £40 as the total cost of 8 items' do
      menu = Menu.new
      menu.menu_items
      menu.print_menu
      menu.selected_dishes("sandwhich", 5)
      menu.selected_dishes("burger", 1)
      menu.selected_dishes("chips", 2)
      expect(menu.total_cost).to eq '£40'
    end
  end

  context 'returns the total cost and all the items ordered' do
    it 'returns 3 items and their quantities and the total cost' do
      menu = Menu.new
      menu.menu_items
      menu.print_menu
      menu.selected_dishes("sandwhich", 1)
      menu.selected_dishes("burger", 2)
      menu.selected_dishes("chips", 3)
      menu.total_cost
      expect(menu.receipt).to eq "1x sandwhich, 2x burger, 3x chips total: £30"
    end
  end
end



