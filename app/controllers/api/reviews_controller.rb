

Class Api::ReviewsController < ApplicationController

  def index
    @reviews = Review.filter(params[:id])
  end

  def show

  end

  # might need to render something different here
  def create
    @review = Review.new(review_params)
    if @review.save
      @reviews = Review.filter(params[:manga_id])
    else
      render(
        json: ["Invalid review. A review must contain a rating between 1-5"],
        status: 401
      )
    end

  end

  def destroy

  end

  def update

  end

  private
  def review_params
    params.require(:review).permit(:manga_id, :user_id, :rating, :title, :description)
  end


end
