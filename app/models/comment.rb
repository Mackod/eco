class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  has_many :answers
  has_many :comment_upvotes
end
