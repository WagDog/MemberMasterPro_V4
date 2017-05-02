json.extract! card_discount, :id, :name, :description, :discount_type, :amount, :created_at, :updated_at
json.url card_discount_url(card_discount, format: :json)
