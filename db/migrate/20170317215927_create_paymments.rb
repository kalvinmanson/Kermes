class CreatePaymments < ActiveRecord::Migration[5.0]
  def change
    create_table :paymments do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.float :ammount
      t.float :shipping
      t.float :taxes
      t.float :fee
      t.boolean :cash
      t.string :status

      t.timestamps
    end
  end
end
