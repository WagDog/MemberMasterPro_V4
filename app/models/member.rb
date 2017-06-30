class Member < ActiveRecord::Base
  belongs_to :member_category

  has_many :addresses
  has_many :telephone_numbers
  has_many :email_addresses
  has_one :card_holder
  #has_one :card_profile, through: :card_holder
  has_many :member_notes

  #validates(:suffix, presence: true)

  accepts_nested_attributes_for :addresses, reject_if: proc { |attributes| attributes['address_1'].blank? }, allow_destroy: true
  accepts_nested_attributes_for :telephone_numbers, reject_if: proc { |attributes| attributes['number'].blank? }, allow_destroy: true
  accepts_nested_attributes_for :email_addresses, reject_if: proc { |attributes| attributes['email'].blank? }, allow_destroy: true
  accepts_nested_attributes_for :card_holder, reject_if: proc { |attributes| attributes['card_number'].blank? }, allow_destroy: false
end
