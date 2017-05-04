class Site < ActiveRecord::Base
  has_many :transactions
end
