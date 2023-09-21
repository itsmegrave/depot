class AddCurrentPriceToCart < ActiveRecord::Migration[7.0]
  def up
    Cart.all.each do |cart|
      cart.line_items.each do |line_item|
        line_item.update(price: line_item.product.price)
      end
    end
  end

  def down
    LineItem.all.each do |line_item|
      line_item.update(price: nil)
    end
  end
end
