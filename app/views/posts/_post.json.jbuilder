json.extract! post, :id, :Title, :Tag, :Content, :created_at, :updated_at
json.url post_url(post, format: :json)
