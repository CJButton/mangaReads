

class Api::ReviewsController < ApplicationController

  def index
    @reviews = Review.filter(params[:manga])
  end

  def show
    @review = Review.find_by(manga_id: params[:id].to_i,
                                        user_id: current_user.id)
    if @review.blank?
      return nil
    else
      @review
    end
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
    @review = Review.find(params[:id].to_i)
    @review.destroy
    render json: @review
  end

  def update
    @review = Review.update(params[:id].to_i, :rating => params[:rating],
        :title => params[:title], :description => params[:text])

    render json: @review
  end

end
