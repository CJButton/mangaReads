


class AddImgUrLtoManga < ActiveRecord::Migration
  def change
    add_column :mangas, :img_url, :text
  end
end
