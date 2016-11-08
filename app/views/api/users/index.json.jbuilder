

@mangas.each do |manga|
  json.set! manga.id do
    json.extract! manga, :id, :title, :author, :synopsis
  end
end
