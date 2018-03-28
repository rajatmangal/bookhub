class ChangeIsbnName < ActiveRecord::Migration
  def change
    rename_column :books, :ISBN, :isbn
  end
end
