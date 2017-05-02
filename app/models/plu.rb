class Plu < ActiveRecord::Base
  belongs_to :group
  belongs_to :vat
  belongs_to :rp_sort_group
end
