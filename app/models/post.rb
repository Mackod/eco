class Post < ApplicationRecord
  belongs_to :user
  has_many :post_upvotes
  has_many :post_downvotes
  has_many :comments
end
