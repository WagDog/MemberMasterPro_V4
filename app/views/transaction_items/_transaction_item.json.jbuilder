json.extract! transaction_item, :id, :transaction_id, :cashier_id, :plu_id, :plu_name, :plu_factor, :plu_factor_entered, :plu_price, :plu_price_level, :plu_group_id, :plu_price_level_1, :plu_cost, :vat_id, :void, :sale_date_time, :rp_sort_group_id, :kp_printed, :condiment, :purse_no, :line_amount, :discounted_amount, :single_discounted_amount, :nett_amount, :discount, :surcharge_amount, :vat_amount, :single_vat_amount, :add_surcharge, :created_at, :updated_at
json.url transaction_item_url(transaction_item, format: :json)
