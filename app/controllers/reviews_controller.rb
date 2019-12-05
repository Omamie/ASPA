class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def create
    @review = Review.new(safe_review)
    @review.treatment_id = params[:treatment_id]
    authorize @review
    if @review.save
      redirect_to treatment_path(@review.treatment)
    end

  end

  def safe_review
    params.require(:review).permit(:content, :star)
  end
end
