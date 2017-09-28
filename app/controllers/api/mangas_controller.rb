

class Api::MangasController < ApplicationController

  def index
    # Home Page #
    if params[:filter].nil?
      # 1296 comics in db
      # have this fire a function that grabs and returns an object with several
      # genres of comics in it
      # @manga = Manga.all.limit(5).offset(500)
      ### Use 'whenver' gem to schedule daily updates ###
      # Genre.where(:genre => 'Action').order("RANDOM()").limit(5)
      # Manga.joins(:genres).where(genres: {genre: 'Action'}).limit(2)
      action = Manga.joins(:genres).where(genres: {genre: 'Action'}).order("RANDOM()").limit(24)
      romance = Manga.joins(:genres).where(genres: {genre: 'Romance'}).order("RANDOM()").limit(24)
      @manga = {action: action, romance: romance}
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
