class ChangePriceDataType < ActiveRecord::Migration
  def change
    change_column :books, :price, :number_field
  end
end
