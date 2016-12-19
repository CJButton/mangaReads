

require 'byebug'
class Api::MangabookshelvesController < ApplicationController

  def toggle
    MangaBookshelf.toggle(params[:shelfId], params[:mangaId])
    render json: MangaBookshelf.find_shelves(params[:mangaId])
  end

  # this show action is here to find all all user's shelves where the
  # current manga can be found. This will be compared in the react component
  # against all of the user's shelves.
  def show
    render json: MangaBookshelf.find_shelves(params[:id])
  end

end
