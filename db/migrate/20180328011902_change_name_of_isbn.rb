class ChangeNameOfIsbn < ActiveRecord::Migration
  def change
    rename_column :books, :isbn, :ISBN
  end
end
