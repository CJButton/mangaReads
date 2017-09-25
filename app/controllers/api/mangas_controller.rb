

class Api::MangasController < ApplicationController

  def index
    # Home Page #
    if params[:filter].nil?
      # 1296 comics in db
      # have this fire a function that grabs and returns an object with several
      # genres of comics in it
      # @manga = Manga.all.limit(14).offset(500)

      ### Use 'whenver' gem to schedule daily updates ###
      # Action  => 708
      # Romance => 291
      # action = []
      # act = Array(0..708)
      # act_ids = act.sample(1)
      # gen = Genre.includes(:manga).where(:genre => 'Action')
      # p gen
      # Genre.where(:genre => 'Action').order("RANDOM()").limit(5)
      # Manga.joins(:genres).where(genres: {genre: 'Action'}).limit(2)
      action = Manga.joins(:genres).where(genres: {genre: 'Action'}).order("RANDOM()").limit(10)
      romance = Manga.joins(:genres).where(genres: {genre: 'Romance'}).order("RANDOM()").limit(10)
      # act_ids.each do |id|
      #   action.push(Genre.where(:genre => 'Action')[id].manga)
      # end

      # good enough for testing
      # romance = []
      # rom = Array(0..291)
      # rom_ids = rom.sample(10)
      # rom_ids.each do |id|
      #   romance.push(Genre.where(:genre => 'Romance')[id].manga)
      # end

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
