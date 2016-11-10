





@all_shelves_with_comic.each do |shelf|

  json.set! shelf.bookshelf_id do
    json.extract shelf, :id, :manga_id, :bookshelf_id
  end

end
