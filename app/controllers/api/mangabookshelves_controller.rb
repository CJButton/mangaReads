


class Api::MangabookshelvesController < ApplicationController



  def toggle
    render json: MangaBookshelf.toggle(params[:shelfId], params[:mangaId])

  end

end
