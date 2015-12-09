class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :title,   presence: true, length: { maximum: 50 },
                      uniqueness: true
  validates :body,    presence: true, length: { maximum: 4080 }
  validates :user_id, presence: true
end
