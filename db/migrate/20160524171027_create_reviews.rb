class CreateReviews < ActiveRecord::Migration
  def change
  	drop_table :reviews
    create_table :reviews do |t|
      t.references :user, index: true, foreign_key: true
      t.references :restaurant, index: true, foreign_key: true
      t.text :content

      t.timestamps null: false
    end
  end
end
