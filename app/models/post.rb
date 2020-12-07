class Post < ApplicationRecord
  belongs_to :user
  belongs_to :book
  has_many :comments

  validates :title, presence: true
  validates :content, presence: true


  def owned_by?(user)
    self.user == user
  end
end
