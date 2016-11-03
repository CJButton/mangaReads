


class Api::MangasController < ApplicationController


  # show all manga?
  def index
    @manga = Manga.all
  end

  # grab a specific comic
  def show
    @manga = Manga.find(params[:id])
  end


end
