class TelephoneNumber < ActiveRecord::Base
  has_one :member
  belongs_to :telephone_type
end
