class AddCoordinatesToTreatments < ActiveRecord::Migration[5.2]
  def change
    add_column :treatments, :latitude, :float
    add_column :treatments, :longitude, :float
  end
end
