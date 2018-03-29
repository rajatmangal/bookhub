class AddFields < ActiveRecord::Migration
  def change
    add_column :books, :description, :string
    add_column :books, :price, :string
    add_column :books, :availability, :datetime
    add_column :books, :created_at, :datetime
    add_column :books, :updated_at, :datetime
  end
end
