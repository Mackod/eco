class Post < ApplicationRecord
  belongs_to :user
  has_many :post_upvotes
  has_many :comments
end
