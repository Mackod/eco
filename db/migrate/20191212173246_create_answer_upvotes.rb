class CreateAnswerUpvotes < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_upvotes do |t|
      t.references :answer, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
