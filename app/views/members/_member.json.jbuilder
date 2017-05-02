json.extract! member, :id, :code, :prefix, :title, :initials, :forename, :surname, :suffix, :address_id, :telephone_number_id, :email_address_id, :member_category_id, :formal_salutation, :informal_salutation, :male, :master, :direct_debit, :birth_date, :join_date, :left_date, :is_active, :created_at, :updated_at
json.url member_url(member, format: :json)
