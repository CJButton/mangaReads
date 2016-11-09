


class CreateMangaStatuses < ActiveRecord::Migration
  def change
    create_table :manga_statuses do |t|
      t.integer :user_id, null: false
      t.integer :manga_id, null: false
      t.string :status, null: false

      t.timestamps null: false
    end
  end
end
