class WishList < ActiveRecord::Base
  belongs_to :user
  
  validates :ISBN, presence: true, 
            uniqueness: true
  validates :name, presence: true
  validates :price, presence: true
  
  
end
