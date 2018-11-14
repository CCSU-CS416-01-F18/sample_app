VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true,
  uniqueness: { case_sensitive: false},
  length: { maximum: 255 },
  format: { with: VALID_EMAIL_REGEX }

  before_save {email.downcase! }
  #has_secure_password
end
