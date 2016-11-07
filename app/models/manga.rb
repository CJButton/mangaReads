


class Manga < ActiveRecord::Base
  validates :title, :author, :synopsis, presence: true
  validates :title, uniqueness: true

  belongs_to :bookshelf

end
