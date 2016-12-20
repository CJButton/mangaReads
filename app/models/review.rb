



class Review < ActiveRecord::Base

  belongs_to :manga

  def self.filter(id)
    Manga.find(id).reviews
  end

end
