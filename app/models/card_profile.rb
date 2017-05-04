class CardProfile < ActiveRecord::Base
  has_many :card_discount_matrices
  has_many :card_holders
end
