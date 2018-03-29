class RemoveFields < ActiveRecord::Migration
  def change
    remove_column :books, :description
    remove_column :books, :price
    remove_column :books, :availability
    remove_column :books, :created_at
    remove_column :books, :updated_at
  end
end
