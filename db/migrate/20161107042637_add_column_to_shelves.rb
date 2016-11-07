


class AddColumnToShelves < ActiveRecord::Migration
  def change
    add_column :bookshelves, :manga_id, :integer, null: false
  end
end
