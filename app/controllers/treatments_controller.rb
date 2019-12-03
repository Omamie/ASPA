class TreatmentsController < ApplicationController
  def index
    @treatments = Treatment.all
  end

  def new
    @user = User.find(current_user.id)
    @treatment = Treatment.new
  end

  def create
    @treatment = Treatment.new(safe_params)
    @treatment.user = current_user
    @treatment.save
    redirect_to treatments_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def safe_params
    params.require(:treatment).permit(:name, :description, :price, :center_name)
  end
end
