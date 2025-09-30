class CreateReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews do |t|
      t.references :user
      t.references :book
      t.references :review_type
      t.string :title
      t.string :message
      
      t.timestamps
    end
  end
end
