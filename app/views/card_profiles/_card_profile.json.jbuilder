json.extract! card_profile, :id, :name, :description, :valid_in_date_range, :date_range_start, :date_range_end, :credit_limit_purse_1, :credit_limit_purse_2, :credit_limit_purse_3, :credit_limit_purse_4, :credit_limit_purse_5, :discount_on_overdrawn_1, :discount_on_overdrawn_2, :discount_on_overdrawn_3, :discount_on_overdrawn_4, :discount_on_overdrawn_5, :pay_by_cash, :created_at, :updated_at
json.url card_profile_url(card_profile, format: :json)