class Book < ActiveRecord::Base
  belongs_to :user
  
  validates :ISBN, presence: true, 
            uniqueness: true
  validates :name, presence: true
  validates :author, presence: true
  validates :user_id, presence: true
  validates :price, presence: true
  validates :availability, presence: true
  
end