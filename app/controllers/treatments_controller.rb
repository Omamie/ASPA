class TreatmentsController < ApplicationController
  def index
    @treatments = Treatment.all
  end

  def show
    @treatment = Treatment.find(params[:id])
  end

  def new
    @treatment = Treatm
  end

  def create

  end

  def edit
  end

  def update
  end

  def destroy
  end
end
