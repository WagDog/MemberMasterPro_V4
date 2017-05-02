class Member < ActiveRecord::Base
  belongs_to :address
  belongs_to :telephone_number
  belongs_to :email_address
  belongs_to :member_category
end
