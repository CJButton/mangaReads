


@manga.each do |comic|
  json.set! comic.id do
    json.extract! comic, :id, :title, :author, :synopsis, :release_date, :img_url, :genre, :avg
  end
end
