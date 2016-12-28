


# @review.each do |review|
#   json.set! review.id do
#     json.extract! review, :id, :user_id, :manga_id, :rating, :title, :description, :username
#   end
# end

if @review
    json.extract! @review, :id, :user_id, :manga_id, :rating, :title, :description, :username, :avg
else
  nil
end
#
# if @review
#   json.array! @review, :id, :user_id, :manga_id, :rating, :title, :description, :username
# else
#   nil
# end
