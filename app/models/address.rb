class Address < ActiveRecord::Base
  belongs_to :member
  belongs_to :address_type
end
