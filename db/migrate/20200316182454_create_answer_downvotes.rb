class CreateAnswerDownvotes < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_downvotes do |t|
      t.references :answer, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
