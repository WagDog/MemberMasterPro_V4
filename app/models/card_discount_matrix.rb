class CardDiscountMatrix < ActiveRecord::Base
  belongs_to :group
  belongs_to :plu
  belongs_to :card_profile
  belongs_to :card_discount
end
