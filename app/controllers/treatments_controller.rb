class TreatmentsController < ApplicationController
  def index
    @treatments = policy_scope(Treatment)
  end

  def new
    @treatment = current_user.treatments.new
    authorize @treatment
    # @user = User.find(current_user.id)
    # @treatment = Treatment.new
  end

  def create
    # @treatment = Treatment.new(safe_params)
    # @treatment.user = current_user
    @treatment = current_user.treatments.new(safe_params)
    authorize @treatment
    if @treatment.save
      redirect_to treatments_path
    end
 end

  def edit
  end

  def update
    authorize @treatment
  end

  def destroy
  end

  def safe_params
    params.require(:treatment).permit(:name, :description, :price, :center_name)
  end
end
