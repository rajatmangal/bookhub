class ChangeFields < ActiveRecord::Migration
  def change
     change_column :books, :price, :float
  end
end
