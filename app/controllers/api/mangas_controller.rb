


class Api::MangasController < ApplicationController


  def index
    if params[:filter].nil?
      @manga = Manga.all
    else
      @manga = Manga.filter(current_user, params[:filter])
      @manga.each do |comic|
        if Review.exists?(manga_id: comic.id, user_id: current_user.id)
          p rev = Review.where(manga_id: comic.id, user_id: current_user.id)
          comic.avg = rev[0].rating
        else
          comic.avg = 0
        end
        @manga
      end
    end
  end

  def show
    sum = Review.where(manga_id: params[:id]).average(:rating).to_s
    @manga = Manga.find(params[:id])
    @manga.avg = sum
  end



end
