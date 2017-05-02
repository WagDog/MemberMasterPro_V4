class CardHolder < ActiveRecord::Base
  belongs_to :member
  belongs_to :card_profile
end
