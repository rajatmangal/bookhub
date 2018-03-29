class WishList < ActiveRecord::Base
  belongs_to :user
  
  validates :ISBN, presence: true, 
            :isbn_format => true
  validates :name, presence: true
  
  
end
