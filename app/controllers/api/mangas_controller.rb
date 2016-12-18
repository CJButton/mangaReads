


class Api::MangasController < ApplicationController


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
