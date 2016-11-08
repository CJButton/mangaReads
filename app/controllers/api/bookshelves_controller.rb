


class Api::BookshelvesController < ApplicationController


  def index
    @all_bookshelves = current_user.bookshelves
  end


  # how do I grab all of the manga on all of the bookshelves though?
  # @all_manga = current_user.mangas
  # can find a specific bookshelf just fine
  def show
    @bookshelf = Bookshelf.find(params[:id])
    render json: @bookshelf.mangas
  end

  def all
    @all_manga = current_user.mangas
  end

  def create
    @bookshelf = Bookshelf.new(bookshelf_params)
    if @bookshelf.save
      render json: @bookshelf
    else
      render json: @bookshelf.errors.full_messages, status: 422
    end
  end

  #  private
  #  def bookshelf_params
  #    params.require(:bookshelf).permit(:title, :user_id)
  #  end


end
