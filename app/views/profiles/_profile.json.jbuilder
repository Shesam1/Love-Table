json.extract! profile, :id, :name, :description, :age, :location, :hunger_rating, :created_at, :updated_at
json.url profile_url(profile, format: :json)
