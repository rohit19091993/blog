json.extract! login, :id, :ID, :pass, :created_at, :updated_at
json.url login_url(login, format: :json)
