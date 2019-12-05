class TreatmentsController < ApplicationController
  def index
    @treatments = policy_scope(Treatment)

    if params[:treatment].present? && [:address].present?
       sql_query = "name ILIKE :treatment and address ILIKE :address"
       @treatments = Treatment.where(sql_query, treatment: "%#{params[:treatment]}%" , address:"%#{params[:address]}%")
    else
      @treatments = Treatment.geocoded
    end

    @markers = @treatments.map do |treatment|
      {
        lat: treatment.latitude,
        lng: treatment.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { treatment: treatment }),
        image_url: helpers.asset_url('circle-cropped.png')

      }
    end
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

  def show
    @treatment = Treatment.find(params[:id])
    authorize @treatment
    @booking = current_user.bookings.new
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

  def my_treatments
    @treatments = current_user.treatments
  end

  private

  def safe_params
    params.require(:treatment).permit(:name, :description, :price, :center_name, :address, :photo)
  end
end
