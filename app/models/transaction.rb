class Transaction < ActiveRecord::Base
  belongs_to :till
  belongs_to :cashier
  belongs_to :media
  belongs_to :card_holder
end
