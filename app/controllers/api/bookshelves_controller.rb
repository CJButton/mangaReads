


class Api::BookshelvesController < ApplicationController



  # display ALL bookshelves of the current user
  # to be displayed in the sidebar
  def index
    @all_bookshelves = current_user.bookshelves
  end

  # display ONLY the comics for a specific bookshelf
  # how do I include the booshelf name as well though?
  def show
    @bookshelf = Bookshelf.find(params[:id])
    render json: @bookshelf
  end

  # create a new bookshelf for the user, to be added to :bookshelf ???
  def create
    #@bookshelf = Bookshelf.new({title: "tester", user_id: current_user.id})

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
