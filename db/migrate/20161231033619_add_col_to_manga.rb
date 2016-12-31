


class AddColToManga < ActiveRecord::Migration
  def change
    add_column :mangas, :release_date, :string
  end
end
