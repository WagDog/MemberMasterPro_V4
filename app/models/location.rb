class Location < ActiveRecord::Base
  has_many :transactions
end
