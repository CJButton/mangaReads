




class MangaBookshelf < ActiveRecord::Base
  has_many :bookshelves
  has_many :mangas
end
