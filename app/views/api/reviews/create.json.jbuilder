



# json.extract! @review, :user_id, :manga_id, :rating, :title, :description, :username


# json.author do
#   json.name @message.creator.name.familiar
#   json.email_address @message.creator.email_address_with_name
#   json.url url_for(@message.creator, format: :json)
# end

# json.set! @review.id do
  json.extract! @review, :id, :user_id, :manga_id, :rating, :title, :description, :username
# end


# @review.each do |review|
#   json.set! review.id do
#     json.extract! review, :user_id, :manga_id, :rating, :title, :description, :username
#   end
# end
