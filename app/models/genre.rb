

class Genre < ActiveRecord::Base
  validates :genre, :manga_id, presence: true

  belongs_to :manga
end
