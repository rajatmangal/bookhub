

class Book < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>",thumb: "150x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
  validates :ISBN, presence: true, 
            :isbn_format => true
  validates :name, presence: true
  validates :author, presence: true
  validates :user_id, presence: true
  validates :price, presence: true, numericality: { greater_than: 0, less_than: 1000000 }
  validates :availability, presence: true
  
  def self.search(search)
    where("name LIKE ?", "%#{search}%") 
  #  where("ISBN LIKE ?", "%#{search}%")
  #  where("description LIKE ?", "%#{search}%")
  #  where("author LIKE ?", "%#{search}%")
  end
  
end