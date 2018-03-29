class RemovePriceFromWishlist < ActiveRecord::Migration
  def change
    remove_column :wish_lists, :price
  end
end
