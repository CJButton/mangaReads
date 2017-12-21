



class Api::MangastatusController < ApplicationController

  def index
    # "Read", "Want-To-Read", "Currently-Reading"
    stats = MangaStatus.where(user_id: 1)
    organized_status = {haveRead: [], WtR: [], CR: []}
    stats.map do |stat, i|
      book = stat.manga
      
    end
  end

  def show
    @status = MangaStatus.where(user_id: current_user.id, manga_id: params[:mangaId])
    render json: @status
  end

  def create
    # Just update the record if there is one; otherwise create a new record
    # MangaStatus.update(3, status: "Read")
    # curr_stat = MangaStatus.where(status: params[:readStatus], manga_id: params[:mangaId], user_id: current_user.id)
    curr_stat = MangaStatus.where(manga_id: params[:mangaId], user_id: current_user.id)
    if curr_stat.blank?
      @status = MangaStatus.create(
                status: params[:readStatus],
                manga_id: params[:mangaId],
                user_id: current_user.id)
    else
      @status = MangaStatus.update(curr_stat.first.id, status: params[:readStatus])
      # grabs the shelf associated with the status
      # p Bookshelf.where(user_id: current_user.id, title: params[:readStatus]).first.mangas
    end
    # MangaStatus.changer(params[:readStatus], params[:mangaId], current_user.id)
    # @status = MangaStatus.where(status: params[:readStatus], manga_id: params[:mangaId], user_id: current_user.id)
    render json: @status
  end

end
