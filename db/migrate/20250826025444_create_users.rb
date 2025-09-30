class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.references :account
      t.references :state
      t.references :country
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      
      t.timestamps
    end
  end
end
