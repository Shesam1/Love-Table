json.extract! event, :id, :name, :details, :date, :address, :photo, :created_at, :updated_at
json.url event_url(event, format: :json)
