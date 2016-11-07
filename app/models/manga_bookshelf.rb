




class MangaBookshelf < ActiveRecord::Base
  belongs_to :bookshelf
  belongs_to :manga
end
