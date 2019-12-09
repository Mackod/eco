class CreateParis < ActiveRecord::Migration[5.2]
  def change
    create_table :paris do |t|
      t.string :arrondissement

      t.timestamps
    end
  end
end
