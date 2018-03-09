class WishList < ActiveRecord::Base
  belongs_to :user
  
  validates :ISBN, presence: true, 
            uniqueness: true
  validates :name, presence: true
  validates :user_id, presence: true
  validates :price, presence: true
  validates :stock, presence: true
  
  
end
