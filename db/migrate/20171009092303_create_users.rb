class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :country
      t.string :city
      t.integer :housenumber
      t.string :password

      t.timestamps
    end
  end
end
