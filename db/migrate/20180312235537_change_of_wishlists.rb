class ChangeOfWishlists < ActiveRecord::Migration
  def change
    remove_column :wish_lists, :stock
  end
end
