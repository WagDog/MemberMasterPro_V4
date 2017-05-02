json.extract! card_holder, :id, :member_id, :title, :initials, :surname, :card_number, :issue_number, :card_profile_id, :status, :valid_in_date_range, :balance_1, :balance_2, :balance_3, :balance_4, :balance_5, :birth_date, :category, :created_at, :updated_at
json.url card_holder_url(card_holder, format: :json)
