class ChangeTypeOfDescription < ActiveRecord::Migration
  def change
    change_column :books, :description, :string
  end
end
