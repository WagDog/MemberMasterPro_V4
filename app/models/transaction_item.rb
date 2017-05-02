class TransactionItem < ActiveRecord::Base
  belongs_to :transaction
  belongs_to :cashier
  belongs_to :plu
  belongs_to :vat
  belongs_to :rp_sort_group
end
