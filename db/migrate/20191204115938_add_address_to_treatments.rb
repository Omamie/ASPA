class AddAddressToTreatments < ActiveRecord::Migration[5.2]
  def change
    add_column :treatments, :address, :string
  end
end
