



# @allReviews.each do |review|
#   p review
#   json.set! review.id do
#     json.extract! review, :user_id, :manga_id, :rating, :title, :description, :username
#   end
# end
# p @review
json.extract! @review, :id, :user_id, :manga_id, :rating, :title, :description, :username
