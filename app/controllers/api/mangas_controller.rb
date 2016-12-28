


class Api::MangasController < ApplicationController


  def index
    if params[:filter].nil?
      @manga = Manga.all
    else
      @manga = Manga.filter(current_user, params[:filter])
    end
  end

  def show
    p sum = Review.where(manga_id: params[:id]).average(:rating).to_s
    p @manga = Manga.find(params[:id])
    p @manga.avg = sum
  end



end
