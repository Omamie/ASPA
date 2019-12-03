class CreateTreatments < ActiveRecord::Migration[5.2]
  def change
    create_table :treatments do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :description
      t.string :price
      t.string :center_name

      t.timestamps
    end
  end
end
