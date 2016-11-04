


@manga.each do |comic|
  json.set! comic.id do
    json.extract! comic, :id, :title, :author, :synopsis, :img_url
  end
end
