



class Api::MangastatusController < ApplicationController

  def show

    @status = MangaStatus.where(user_id: current_user.id, manga_id: params[:mangaId])
    render json: @status
  end

  def create
    MangaStatus.changer(params[:readStatus], params[:mangaId], current_user.id)
    @status = MangaStatus.where(status: params[:readStatus], manga_id: params[:mangaId], user_id: current_user.id)
    render json: @status
  end

end
