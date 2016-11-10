



@user_shelves.each do |shelf|
  json.set! shelf.id do
    json.extract! shelf, :id, :title, :user_id
  end
end
