class TillTransactionItem < ActiveRecord::Base
  belongs_to :till_transaction
  belongs_to :cashier
  belongs_to :plu
  belongs_to :vat
  belongs_to :rp_sort_group
end
