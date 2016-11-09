


class Api::MangasController < ApplicationController


  # show all manga?
  # Do I really need this? Leave it for now. It might be useful later.
  # def index
    # @manga = Manga.all
  # end

  def index
    if params[:filter].nil?
      @manga = Manga.all
    else
      @manga = Manga.filter(current_user, params[:filter])
    end
  end

  def show
    @manga = Manga.find(params[:id])
  end


end
