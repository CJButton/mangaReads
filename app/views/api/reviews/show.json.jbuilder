


# @review.each do |review|
#   json.set! review.id do
#     json.extract! review, :id, :user_id, :manga_id, :rating, :title, :description, :username
#   end
# end

if @review
  json.set! @review.id do
    json.extract! @review, :id, :user_id, :manga_id, :rating, :title, :description, :username
  end
else
  nil
end
