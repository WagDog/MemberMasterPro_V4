class CardDiscountMatrix < ActiveRecord::Base
  belongs_to :group
  belongs_to :plu
  belongs_to :card_profiles
  belongs_to :card_discounts
end
