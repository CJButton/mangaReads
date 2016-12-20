



class Review < ActiveRecord::Base
  validates :manga_id, :user_id, :rating, presence: true

  belongs_to :manga

  def self.filter(id)
    Manga.find(id).reviews
  end

end
