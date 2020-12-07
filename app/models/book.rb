class Book < ApplicationRecord
  validates :bookname, presence: true
  has_many :posts
end
