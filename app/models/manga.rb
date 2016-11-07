


class Manga < ActiveRecord::Base
  validates :title, :author, :synopsis, presence: true
  validates :title, uniqueness: true

  has_many :mangabookshelves, :class_name => 'MangaBookshelf'
  has_many :bookshelves, through: :mangabookshelves, source: :bookshelf
end
