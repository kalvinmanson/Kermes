class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :content
      t.integer :quantity
      t.float :price
      t.boolean :shipping
      t.float :shipping_price
      t.boolean :cash

      t.timestamps
    end
  end
end
