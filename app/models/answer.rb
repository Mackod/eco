class Answer < ApplicationRecord
  belongs_to :comment
  belongs_to :user
  has_many :answer_upvotes
  has_many :answer_downvotes
end
