json.extract! email_address, :id, :email, :is_default, :created_at, :updated_at
json.url email_address_url(email_address, format: :json)
