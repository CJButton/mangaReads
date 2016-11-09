


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

  # grab ALL the comics for the current user, to be displayed on entrance
  # or on hitting the ALL button in my-Manga
  def all
    @all_manga = current_user.mangas
  end

  # create a new bookshelf for the user, to be added to :bookshelf ???
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
