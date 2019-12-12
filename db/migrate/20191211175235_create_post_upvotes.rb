class CreatePostUpvotes < ActiveRecord::Migration[5.2]
  def change
    create_table :post_upvotes do |t|
      t.references :post, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
