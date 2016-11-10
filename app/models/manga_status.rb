




class MangaStatus < ActiveRecord::Base

  validates :status, inclusion: { in: %w(Read To-Read Currently-Reading)}

  belongs_to :user
  belongs_to :manga

end
