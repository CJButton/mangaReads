


class Api::BookshelvesController < ApplicationController


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
