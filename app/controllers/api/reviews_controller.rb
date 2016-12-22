

class Api::ReviewsController < ApplicationController

  def index

  end

  def show
    @reviews = Review.filter(params[:id].to_i)
  end

  def create
    name = User.find(params[:userId]).username
    @review = Review.new(:user_id => params[:userId], :manga_id => params[:mangaId],
      :rating => params[:rating], :title => params[:title], :description => params[:description],
      :username => name)

    if @review.save
      @review
    end

  end

  def destroy

  end

  def update

  end

end
