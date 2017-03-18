class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :role
      t.string :name
      t.string :username
      t.date :birthdate
      t.string :gender
      t.string :phone
      t.string :country
      t.string :state
      t.string :city
      t.string :zipcode
      t.string :address1
      t.string :address2
      t.float :rank
      t.integer :purchases
      t.integer :sales

      t.timestamps
    end
  end
end
