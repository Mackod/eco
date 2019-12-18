class Answer < ApplicationRecord
  belongs_to :comment
  belongs_to :user
  has_many :answer_upvotes
end
