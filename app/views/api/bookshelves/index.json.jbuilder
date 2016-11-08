


@all_manga.each do |bookshelf|
  json.set! bookshelf.id do
    json.extract! bookshelf, :title, :author, :img_url
  end
end
