


# @reviews.each do |one_review|
#   json.set! one_review.id do
#     json.extract! one_review, :user_id, :manga_id, :rating, :title, :description
#   end
# end
json.set! @review.id do
  json.extract! @review, :id, :user_id, :manga_id, :rating, :title, :description, :username
end
