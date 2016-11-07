



# want to keep the user from creating two identical bookshelves
class Bookshelf < ActiveRecord::Base
  validates :title, :user_id, presence: true

  belongs_to :user
  has_many :mangas

end
