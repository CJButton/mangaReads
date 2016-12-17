


class Api::BookshelvesController < ApplicationController

  def index
    all_bookshelves = current_user.bookshelves
    @user_shelves = all_bookshelves.drop(3)
  end

  def show
    @bookshelf = Bookshelf.find(params[:id])
    render json: @bookshelf
  end

  def create
    @bookshelf = Bookshelf.new(title: params[:shelf], user_id: current_user.id)

    if @bookshelf.save
      render json: @bookshelf
    else
      render json: @bookshelf.errors.full_messages, status: 422
    end
  end

  def destroy

    @bookshelf = Bookshelf.find(params[:id])
    @bookshelf.destroy
    render json: @bookshelf

  end

   private
   def bookshelf_params
     params.require(:bookshelf).permit(:title)
   end


end
