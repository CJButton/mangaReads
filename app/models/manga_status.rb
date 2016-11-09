


class MangaStatus < ActiveRecord::Base

  validates :size, inclusion: { in: %w(Read To-Read Currently-Reading)}
  
end
