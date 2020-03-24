class Post < ApplicationRecord
  belongs_to :user
  has_many :post_upvotes
  has_many :post_downvotes
  has_many :comments

  include PgSearch::Model
  pg_search_scope :search_by_title_and_content,
    against: [ :title, :content ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  end
