



class Review < ActiveRecord::Base
  validates :username, presence: true

  belongs_to :manga

  def self.filter(id)
    p "the id coming in is #{id}"
    p Manga.find(id).reviews
  end

end
