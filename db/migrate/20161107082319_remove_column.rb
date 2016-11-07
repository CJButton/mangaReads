

class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :bookshelves, :manga_id, :integer
  end
end
