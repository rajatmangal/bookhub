class CreateWishLists < ActiveRecord::Migration
  def change
    create_table :wish_lists do |t|
      t.string :name
      t.string :ISBN
      t.float :price
    end
  end
end
