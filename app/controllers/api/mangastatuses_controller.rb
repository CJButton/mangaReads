




class Api::MangaStatusesController < ApplicationController

  def create
    render json: MangaStatus.changer(params[:readStatus], params[:mangaId], current_user.id)
  end

end
