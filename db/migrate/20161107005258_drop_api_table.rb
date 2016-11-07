


class DropApiTable < ActiveRecord::Migration
  def change
    drop_table :api_bookshelves
  end
end
