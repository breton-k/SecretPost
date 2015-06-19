json.array!(@posts) do |post|
  json.extract! post, :id, :email, :body
  json.url post_url(post, format: :json)
end
