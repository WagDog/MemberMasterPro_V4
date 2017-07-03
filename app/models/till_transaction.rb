class TillTransaction < ActiveRecord::Base
  belongs_to :site
  belongs_to :location
  belongs_to :till
  belongs_to :cashier
  belongs_to :medium
  belongs_to :card_holder
end
