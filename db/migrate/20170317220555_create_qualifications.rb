class CreateQualifications < ActiveRecord::Migration[5.0]
  def change
    create_table :qualifications do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.text :content
      t.integer :rank

      t.timestamps
    end
  end
end
