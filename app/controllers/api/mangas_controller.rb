

class Api::MangasController < ApplicationController

  def index
    # Home Page #
    if params[:filter].nil?
      action = Manga.joins(:genres).where(genres: {genre: 'Action'}).order("RANDOM()").limit(32)
      romance = Manga.joins(:genres).where(genres: {genre: 'Romance'}).order("RANDOM()").limit(32)
      drama = Manga.joins(:genres).where(genres: {genre: 'Drama'}).order("RANDOM()").limit(32)
      @manga = {action: action, romance: romance, drama: drama}
      render json: @manga
    else
      # Comic Info Page #
      @manga = Manga.filter(current_user, params[:filter])
      @manga.each do |comic|
        if Review.exists?(manga_id: comic.id, user_id: current_user.id)
          rev = Review.where(manga_id: comic.id, user_id: current_user.id)
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
