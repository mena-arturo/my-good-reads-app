class CreateAuthorBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :author_books do |t|
      t.references :book
      t.references :author
      
      t.timestamps
    end
  end
end
