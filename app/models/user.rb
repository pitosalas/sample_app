class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation

  validates :name, presence: true, length: { maximum: 50 }
  
  validates :email, presence: true
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :email, 
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
  
  validates :password, presence: true, length: { minimum: 6 }

  validates :password_confirmation, presence: true
  
  before_save { |user| user.email = email.downcase }
  
  has_secure_password   
end