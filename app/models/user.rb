class User < ActiveRecord::Base
  
  #callbacks
  before_save { email.downcase! }

  #validations (name, email & password)
  validates :name, presence: true, length: { minimum: 2, maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, length: { minimum: 6 }

end