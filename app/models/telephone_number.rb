class TelephoneNumber < ActiveRecord::Base
  belongs_to :member
  belongs_to :telephone_type

end
