




class AddGenreColumn < ActiveRecord::Migration
  def change
    add_column :mangas, :genre, :string, array: true, default: []
  end
end
