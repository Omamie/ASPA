class TreatmentsController < ApplicationController
  def index
    @treatments = policy_scope(Treatment)
    @treatments = Treatment.geocoded

    @markers = @treatments.map do |treatment|
      {
        lat: treatment.latitude,
        lng: treatment.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { treatment: treatment })
      }
    end
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

  def my_treatments
    @treatments = current_user.treatments
  end

  def safe_params
    params.require(:treatment).permit(:name, :description, :price, :center_name)
  end
end
