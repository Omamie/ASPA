class RemoveBookinIdFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :booking_id, :integer
  end
end
