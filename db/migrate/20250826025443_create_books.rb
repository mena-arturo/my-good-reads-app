class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.references :genre
      t.string :title
      t.datetime :published_date

      t.timestamps
    end
  end
end
