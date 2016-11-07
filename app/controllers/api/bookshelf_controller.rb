



class Api::Bookshelves < ApplicationController

  def create
    @bookshelf = Bookshelf.new(bookshelf_params)
    if @bookshelf.save
      render json: @user
    else
      render json: @user.errors.full_messages, status: 422
  end

   private
   def bookshelf_params
     params.require(:bookshelf).permit(:title, :user_id)
   end


end
