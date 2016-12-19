require "byebug"


class MangaBookshelf < ActiveRecord::Base
  belongs_to :bookshelf
  belongs_to :manga

  def self.toggle(shelf_id, manga_id)

    old = MangaBookshelf.where(bookshelf_id: shelf_id, manga_id: manga_id).ids
    if old.empty?
      @shelf = MangaBookshelf.create(bookshelf_id: shelf_id, manga_id: manga_id)

      @all_shelves_with_comic = MangaBookshelf.where(manga_id: manga_id)

      return @all_shelves_with_comic
    else
      MangaBookshelf.destroy(old)
      @all_shelves_with_comic = MangaBookshelf.where(manga_id: manga_id)
      return @all_shelves_with_comic
    end
  end

  def self.find_shelves(manga_id)
    Manga.find(manga_id).bookshelves
  end
end
