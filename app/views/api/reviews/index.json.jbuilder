




@reviews.each do |review|
  p review
  json.set! review.id do
    json.extract! review, :user_id, :manga_id, :rating, :title, :description, :username
  end
end