class Plu < ActiveRecord::Base
  belongs_to :group
  belongs_to :vat
  belongs_to :rp_sort_group
  belongs_to :modifier
  has_many :pop_up_windows
  has_many :selection_windows
end
