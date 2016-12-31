


@manga.each do |comic|
  json.set! comic.id do
    json.extract! comic, :id, :title, :author, :synopsis, :released, :img_url, :avg
  end
end
