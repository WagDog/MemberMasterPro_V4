class TelephoneType < ActiveRecord::Base
  has_many :telephone_numbers
end
