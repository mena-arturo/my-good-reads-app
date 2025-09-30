class CreateUserBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :user_books do |t|
      t.references :book
      t.references :user
      
      t.timestamps
    end
  end
end
