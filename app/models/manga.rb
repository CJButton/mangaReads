


class Manga < ActiveRecord::Base
  validates :title, :author, :synopsis, presence: true
  validates :title, uniqueness: true

  attr_accessor :avg

  has_many :mangabookshelves, :class_name => 'MangaBookshelf'
  has_many :bookshelves, through: :mangabookshelves, source: :bookshelf
  has_many :reviews
  has_many :genres
  def self.genres
    gens = [
      'Action',
      'Adventure',
      'Drama',
      'Battles',
      'School Life',
      'Comedy',
      'Supernatural',
      'Horror',
      'Mystery',
      'Romance'
    ]
    @manga = {}

    gens.each do |type|
      @manga[type] = Manga.joins(:genres).where(genres: {genre: type}).order("RANDOM()").limit(32)
    end
    return @manga
  end

  def self.filter(current_user, shelf_name)
    if shelf_name == "all"
      return current_user.mangas
    else
      # be able to filter based on the shelf_name coming in
      this_shelf = current_user.bookshelves.where("title = ?", shelf_name).first
      return this_shelf.mangas
    end
  end

  def attributes
    super.merge('avg' => self.avg)
  end
end
