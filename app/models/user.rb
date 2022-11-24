class User < ApplicationRecord
  before_save { self.usermail = usermail.downcase}
  has_many :articles

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 40 }
  validates :usermail, uniqueness: { case_sensitive: false }, length: { maximum: 40 }, format: { with: VALID_EMAIL_REGEX }

  has_secure_password

end
