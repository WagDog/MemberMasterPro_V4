class MemberNote < ActiveRecord::Base
  belongs_to :member
  belongs_to :member_note_type
end
