json.extract! comment, :id, :person_name, :body, :post_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
