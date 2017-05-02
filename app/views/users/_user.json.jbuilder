json.extract! user, :id, :email, :name, :isAdministrator, :password_digest, :remember_token, :created_at, :updated_at
json.url user_url(user, format: :json)
