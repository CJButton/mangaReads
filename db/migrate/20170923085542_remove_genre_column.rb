

class RemoveGenreColumn < ActiveRecord::Migration
  def change
     remove_column :mangas, :genre
  end
end
