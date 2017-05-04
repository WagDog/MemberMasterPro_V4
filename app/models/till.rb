class Till < ActiveRecord::Base
  has_one :info_text
  has_many :kp_prints
  has_many :transactions
end
