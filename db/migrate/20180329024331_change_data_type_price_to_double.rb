class ChangeDataTypePriceToDouble < ActiveRecord::Migration
  def change
    change_column :books, :price, :double
  end
end
