class TreatmentsController < ApplicationController
  def index
    @treatments = policy_scope(Treatment)
  end

  def show
    @treatment = Treatment.find(params[:id])
    authorize @treatment
  end

  def new
    @treatment = current_user.treatments.new
    authorize @treatment
  end

  def create
    @treatment = current_user.treatments.new(safe_params)
    authorize @treatment
    if @treatment.save
      redirect_to treatments_path
    end
 end

  def edit
    @treatment = current_user.treatments.new
    authorize @treatment
  end

  def update
    @treatment = Treatment.find(params[:id])
      @treatment.update(safe_params)
      redirect_to treatment_path(@treatment.id)
  end

  def destroy
    @treatment = Treatment.find(params[:id])
    authorize @treatment
    @treatment.destroy
    redirect_to treatments_path
  end

  private

  def safe_params
    params.require(:treatment).permit(:name, :description, :price, :center_name)
  end
end
