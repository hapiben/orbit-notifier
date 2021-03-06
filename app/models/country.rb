class Country < ActiveRecord::Base

  has_many :exchanges
  has_many :origins, through: :exchanges
  has_many :rates

  # accepts_nested_attributes_for :rates
end
