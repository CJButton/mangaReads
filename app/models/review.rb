



class Review < ActiveRecord::Base
  validates :username, presence: true

  belongs_to :manga

  def self.filter(id)
    Manga.find(id).reviews
  end

end
