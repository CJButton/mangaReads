

class RemoveColumnFromBookshelf < ActiveRecord::Migration
  def change
    change_column :bookshelves, :manga_id, :integer
  end
end
