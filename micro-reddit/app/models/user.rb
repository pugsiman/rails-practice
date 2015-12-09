class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  before_save { self.email = email.downcase }
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :username, presence: true, length: { maximum: 21 },
                       uniqueness: true
  validates :email,    presence: true, length: { maximum: 255 },
                       format: { with: EMAIL_REGEX },
                       uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { in: 6..20 }
end
