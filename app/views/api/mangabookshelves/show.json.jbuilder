


# this json file will display all of the bookshelf titles where the
# current manga can be found
@shelves.each do |bookshelf|
  json.set! bookshelf.id do
    json.extract! bookshelf, :title
  end
end
