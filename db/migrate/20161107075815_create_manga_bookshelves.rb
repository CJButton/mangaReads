class CreateMangaBookshelves < ActiveRecord::Migration
  def change
    create_table :manga_bookshelves do |t|
      t.integer :manga_id, null: false
      t.integer :bookshelf_id, null: false
      t.timestamps null: false
    end
  end
end
