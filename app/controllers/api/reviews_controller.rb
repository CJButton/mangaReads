

Class Api::ReviewsController < ApplicationController

  def index
    @reviews = Review.filter(params[:id])
  end

  def show

  end

  def create
    @review = Review.new(review_params)
    if @review.save
      render "api/mangas/show"
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
