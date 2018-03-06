class Book < ActiveRecord::Base
  belongs_to :user
  
  validates :ISBN, presence: true, 
            uniqueness: true
  validates :name, presence: true
  validates :author, presence: true
  validates :user_id, presence: true
  validates :price, presence: true
  validates :availability, presence: true
  
  def self.search(search)
    where("name LIKE ?", "%#{search}%") 
  #  where("ISBN LIKE ?", "%#{search}%")
  #  where("description LIKE ?", "%#{search}%")
  #  where("author LIKE ?", "%#{search}%")
  end
  
end