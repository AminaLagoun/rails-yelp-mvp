class CreateRevieuws < ActiveRecord::Migration[6.1]
  def change
    create_table :revieuws do |t|
      t.text :content
      t.integer :rating

      t.timestamps
    end
  end
end
