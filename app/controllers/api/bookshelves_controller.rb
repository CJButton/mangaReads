


class Api::BookshelvesController < ApplicationController

  # index should grab ALL comics for the current user
  def index
    # @bookshelves = Bookshelf.all
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

   private
   def bookshelf_params
     params.require(:bookshelf).permit(:title, :user_id)
   end


end
