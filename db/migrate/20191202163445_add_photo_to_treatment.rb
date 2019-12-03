class AddPhotoToTreatment < ActiveRecord::Migration[5.2]
  def change
    add_column :treatments, :photo, :string
  end
end
