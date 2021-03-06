class User < ActiveRecord::Base
  has_many :books
  has_many :wish_lists
  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>",thumb: "150x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  before_save {self.email = email.downcase } # This sets all the emails entered into lower case
  validates :username, presence: true, 
            length: {minimum: 3, maximum: 25}, 
            uniqueness: {case_sensitive: false}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, 
            uniqueness: {case_sensitive: false},
            length: {maximum: 105},
            format: {with: VALID_EMAIL_REGEX}
  validates :password, presence: true,
            length: {minimum: 8}
    has_secure_password
end