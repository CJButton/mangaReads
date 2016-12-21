

class Api::ReviewsController < ApplicationController

  def index
  end

  def show
    @reviews = Review.filter(params[:id])
  end

  def create
    name = User.find(params[:userId]).username
    @review = Review.new(:user_id => params[:userId], :manga_id => params[:mangaId],
      :rating => params[:rating], :title => params[:title], :description => params[:description],
      :username => name)
    if @review.save
      @reviews = Review.filter(params[:mangaId)
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

end
