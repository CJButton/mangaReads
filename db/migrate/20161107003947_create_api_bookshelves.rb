class CreateApiBookshelves < ActiveRecord::Migration
  def change
    create_table :api_bookshelves do |t|

      t.timestamps null: false
    end
  end
end
