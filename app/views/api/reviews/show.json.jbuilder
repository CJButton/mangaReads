




# @reviews.each do |one_review|
#   json.set! one_review.id do
#     json.extract! one_review, :user_id, :manga_id, :rating, :title, :description
#   end
# end
@reviews.each do |review|
  json.set! review.id do
    json.extract! review, :user_id, :manga_id, :rating, :title, :description
  end
end
