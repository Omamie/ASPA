class AddTreatmentIdToReview < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :treatment, index: true
  end
end
