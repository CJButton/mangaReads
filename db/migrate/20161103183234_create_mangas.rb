


class CreateMangas < ActiveRecord::Migration
  def change
    create_table :mangas do |t|
      t.string :title, null: false, unique: true
      t.string :author, null: false
      t.text :synopsis, null: false

      t.timestamps null: false
    end
  end
end
